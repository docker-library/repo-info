## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:a22fcfb9431b97a36de84aa778979f4dd2dc64f1af9d9e4ebc1f85798ce7c13d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7994073b8cf08dfbaf33da7962d36e78d58baabf71a01274c75b9a9809d56433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153945304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462ca50e41e5058cee95dec4593a0eae2adbd580e81f712e4d544f3ead525f4c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:40:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:53 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:41:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:41:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a63a0ecfd6d6e01b35680d26a22a8870b26b41793aa360dc0139ad89ba32c7`  
		Last Modified: Tue, 18 Aug 2026 20:41:25 GMT  
		Size: 55.2 MB (55198697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29eeabb25ed1cbe93cf10f7724d1987c7ebb5faf9edcbcf9bf4f905e7d1db05`  
		Last Modified: Tue, 18 Aug 2026 20:41:26 GMT  
		Size: 69.0 MB (68965197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaee2587bc2d2b02aa341af66325de9f1183aadd9354369b01016d8a5e5d7ff`  
		Last Modified: Tue, 18 Aug 2026 20:41:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:83198c9022fffa842229cae652a38b21c15b6ce4198e2827c1b573808df2626c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586b271be440263f6fecd2eee2fd14a753a6a6b88c8d2a0e893a6011f4e66980`

```dockerfile
```

-	Layers:
	-	`sha256:35869dc7f5896c52295fd28b0b43c0590fa2c3bd81dad287bdb107e42fe526fa`  
		Last Modified: Tue, 18 Aug 2026 20:41:23 GMT  
		Size: 5.4 MB (5377724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7951d6ac4e6a87c002b9469b00c2fe390ac5b2405a2efeff5ad42352722501fb`  
		Last Modified: Tue, 18 Aug 2026 20:41:23 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74993744248051d7635a94ba50819261a179a7a4cb867911bf25d45c2cbf5671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a566b30fdd1d52062c7125fa2ee093d1ad59b0b12d5004c48733a925bc6b24d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:40:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:54 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:41:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:41:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae6d1da9cb29cbcf9ea6b9284ce6f68a4cd71fbbc6a9102bdefdb768a517956`  
		Last Modified: Tue, 18 Aug 2026 20:41:31 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e23bd8c7233ffab90639d202dc1e58666a2e3ab475cebd84f5d42ca564b779a`  
		Last Modified: Tue, 18 Aug 2026 20:41:31 GMT  
		Size: 68.8 MB (68785939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7700c0a62e08c89784dbfa44c0ccc102e7bc1d424815b6bc7a5a00eb562b06`  
		Last Modified: Tue, 18 Aug 2026 20:41:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6b6e2671e2567c91995365f0743a57bdeb286ed5b59619779838dfc6dde36c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159e037d3d8aa022022e74d611aeb13ddcfcb58ae0a676dd1fc8252555fa0d6d`

```dockerfile
```

-	Layers:
	-	`sha256:1ab8969f99e1e1fd45be069a5d3d5902c97a086b9f4914717db36505d8b8d60a`  
		Last Modified: Tue, 18 Aug 2026 20:41:29 GMT  
		Size: 5.4 MB (5384185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf129f14e8b0a24da4e6acf95f5f188786ea535df808d5c538b3e2db58ebaa82`  
		Last Modified: Tue, 18 Aug 2026 20:41:28 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d90248cab158d9734e824710d0009d2ea244f557cebbef112e0feb1c27d4ac9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160647537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635e9c5befc0363d80b37a41eebb0c95656d451d5eef6a3f3e5149eac5c94618`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:51:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:51:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:51:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:51:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:51:02 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:51:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:51:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:51:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c312b13cb2d2dca39eb2eeba99f437ee512555460eb8d2bcad158da1218469`  
		Last Modified: Thu, 20 Aug 2026 00:52:20 GMT  
		Size: 52.7 MB (52669121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98da1bcc1c10419680da668114cc7a21748fb6a8e291b920730d2f925a84f7b3`  
		Last Modified: Thu, 20 Aug 2026 00:52:21 GMT  
		Size: 74.4 MB (74376427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e446f6747bcffbde23d78f3ac5ffbc67e923e4034454b915f3329276b668f26`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5fc82a13013e5db39f1a6e1b36c4f6a3a329273aa5fb167b965d4f8d5940c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b1a1f9f2de2fc2b3872186e16eacba9924fd5479820025a572901ba8d0852`

```dockerfile
```

-	Layers:
	-	`sha256:fb0efb521c7089ed51f80231ce01feabe20270b71d010b117e6565fad77d5ccd`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 5.4 MB (5382690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd0ca669cea277106d6799980f5c6b2d478c09ceb4fc6c6ba3185dba0968b7f`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
