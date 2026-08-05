## `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:ab18dd79fa1e0aefef498ea26cb3b78235ecca55e0234d269c5e646a6f0ad7ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:f95c989de6a6bfe6542028cb92990d4470a2c0704f5728f75cde9b0365a3da77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266182505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a72c76ed61e4fd621ba16af060fe3e2e7074f55031d33bf36b57d7bc062420`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:19:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:19:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:19:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:19:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:19:45 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:19:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:19:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5edd32146e117a9edf9f060c48dd06d4e626e6803fa3ae053bf0fbd0c492c8`  
		Last Modified: Wed, 05 Aug 2026 01:20:20 GMT  
		Size: 145.9 MB (145886289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28c2c6753350d7013e2f696c669c28570e6103d254c722fe27bf621b981a57a`  
		Last Modified: Wed, 05 Aug 2026 01:20:19 GMT  
		Size: 66.5 MB (66518553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701a0551c84f3de7d0bfa4e63df7ddbcc1d5b5bc3c8c3157c095f4e745f46435`  
		Last Modified: Wed, 05 Aug 2026 01:20:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a739f119823dfca113c2a5cc328f4e13a2fe3c68eb3a4556d60ef6d63840ce74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84a84efec3ba4215dd0ef9fd9c2dfb0783e3142abf827c8ad53a4024f28356`

```dockerfile
```

-	Layers:
	-	`sha256:c7a232a2c9591d8afdd07bf2bbc174d95734c795c53fb05643b64416ef8e1cb0`  
		Last Modified: Wed, 05 Aug 2026 01:20:16 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6fc26d53b2621d8bde2a1067fb0dcc36c4784924569127d11a5d5ed2a5a31dd`  
		Last Modified: Wed, 05 Aug 2026 01:20:16 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff5b85cb81c6739e5642ac61079e60043be2337c6a54978bb7ed041e1ac52d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261529170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeff238900697a199cbedbb4b567fbbede76ba94fd1b3893cd077377490ac7e2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:25:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:48 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0103d47123a30601a9fc6c82600fb1d740c1482a6baa61e5aa12eacaac74639a`  
		Last Modified: Wed, 05 Aug 2026 01:26:25 GMT  
		Size: 142.6 MB (142582306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab5d5b827c983667631be529056253e31fb60e50e38fe974d004593b7ea0a4b`  
		Last Modified: Wed, 05 Aug 2026 01:26:24 GMT  
		Size: 66.7 MB (66685319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac51f91bd5dd6fd26fd1dcf08a78e543528fa7f91fa94d31a097f918f9efe1b`  
		Last Modified: Wed, 05 Aug 2026 01:26:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1930536e566317f976d942f8ba49c7040190f88c4f77a860b3ddcd67917960e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6a49435534f6c218a2faa143a620f170df3bab440ac027077821a011952c6a`

```dockerfile
```

-	Layers:
	-	`sha256:9035f1650ce347a7fafdbce1a23614bed69f18023bc5cbefeec598387419d2ae`  
		Last Modified: Wed, 05 Aug 2026 01:26:21 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a133665608c771245e68ea64361b31e9a2d54362ccc99d76bc219f345c458d8`  
		Last Modified: Wed, 05 Aug 2026 01:26:21 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
