'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "27fab3359b455dbec7b8689baa927b23",
"version.json": "7ae50c2061b5c9cd17185ba97eca8e11",
"assets/assets/fonts/Agustina.ttf": "dc2e22aeb9024b30a058c690a7f9f7ba",
"assets/assets/fonts/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"assets/assets/images/bg.jpg": "56a5e2b719f5333da3b5a4b64feceb93",
"assets/assets/images/profileimage.jpg": "3bcfda05506a5a34084d8df37fdd8974",
"assets/assets/svg/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/svg/css.svg": "f5da6f2582ec0f08a61d1860848c6cac",
"assets/assets/svg/dart.svg": "384ad99903293e87f01f49214db88050",
"assets/assets/svg/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/svg/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/svg/github.svg": "76d344f08412543c74ccd1fb2493d607",
"assets/assets/svg/flutter.svg": "356b8423fb4c37e3babe292a9e03c975",
"assets/assets/svg/html.svg": "8ee96cee414aecdaf50a90e7b0ce361b",
"assets/assets/svg/instagram.svg": "341a67c538d67f9ce92005cf14255dc2",
"assets/assets/svg/javascript.svg": "bd7fa760d442bb2d79189d3960d9ac12",
"assets/assets/svg/jimdo.svg": "60c1fab4168e2a47337480a18933c257",
"assets/assets/svg/linkedin.svg": "3d952ffcbf6ce58b59864d65c1f60a47",
"assets/assets/svg/vscode.svg": "46bd07edc24e28187b6af11cf510bef1",
"assets/assets/svg/gitlab.svg": "0e29586c8b72ad7a382c4a8fd95e3049",
"assets/assets/svg/twitter.svg": "8f662cde3e6a9aca24b77c1639d9423e",
"assets/assets/png/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/icon/icon.png": "44e893796971eba7a6251e4025ffc0e7",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "908108f9bfcb237539c4fffc6e01b98b",
"assets/FontManifest.json": "7d4d653134eda3ced81460d30e2eeac9",
"assets/NOTICES": "d295878892c1bba042a4216580d882b8",
"favicon.ico": "eff694df8969071c8d718feb45a32bb4",
"icons/Icon-192.png": "44e893796971eba7a6251e4025ffc0e7",
"icons/Icon-512.png": "61aa06731292c285bbfd868568a7065d",
"icons/Icon-maskable-192.png": "44e893796971eba7a6251e4025ffc0e7",
"icons/Icon-maskable-512.png": "61aa06731292c285bbfd868568a7065d",
"index.html": "4864b05e832b49daf856c07acb833d45",
"/": "4864b05e832b49daf856c07acb833d45",
"manifest.json": "b44c7519bc40239fca4421dad8f03cdd",
"style.css": "7caf5e460ca5686ef677a46281223bf2"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
