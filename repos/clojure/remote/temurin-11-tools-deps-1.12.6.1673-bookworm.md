## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:4d48ab656161f793f7f1b05a5e02b86e2497942dc319b4a809ed6bf280ac46e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:5261e6bd1a4f67ac0b333db5a8b18c58427706eb9bd7dad46dfb45b43cf59a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272550111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8206a4ec12bf8589940a800cafd5d8d6adaa684f6e77882cc6a21dc6f57d606`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:19:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:50 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:20:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ac73ea68d8d2cc66cc3612259e9a43d30ddccbfbefdf8e6a794596a89d1314`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 145.9 MB (145864133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8883a39d10bbaeb04a7fd91e212e0b998bbd9faa3fee57facdfa8dfb5b96025b`  
		Last Modified: Fri, 25 Sep 2026 23:20:23 GMT  
		Size: 78.2 MB (78181892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9dee3b1fa31985cc4f81f68467faa176624f52aaf4031a99ad99ddf59249d0`  
		Last Modified: Fri, 25 Sep 2026 23:20:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:02136768979dc83023de2764989342d5e1d2c4631584bd3b21c50080a1684900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff45ddca277d11411379ef7708a191749257eee8bc336fe7bd2e83516f054b11`

```dockerfile
```

-	Layers:
	-	`sha256:2b7b69e76e20215375f8bda73b489ee8ee2b058d19021e8845d9cb780b131f91`  
		Last Modified: Fri, 25 Sep 2026 23:20:21 GMT  
		Size: 7.4 MB (7400156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:012d89af882c4bc301a3af3aef859f0ebc4641264469d029930dca5a0318f64d`  
		Last Modified: Fri, 25 Sep 2026 23:20:20 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a7b38ea20e066c7b41409a27a6eb5c10926002c7015c5e64f225c625baa45044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269139474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1539d1621147fb46ae3299142d865723faab32af9e4bdc19b4f351785a645be5`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:17:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:17:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:17:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:17:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:17:09 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:17:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:17:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:17:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5865f1810504a4e0af8e814d1c511166d31ee27b8efdb8f42ef7951de816a33c`  
		Last Modified: Fri, 25 Sep 2026 23:17:47 GMT  
		Size: 142.6 MB (142576519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81319947b35db7dad9244fc763b08512641d381eb54d07168441d006f0d4c25d`  
		Last Modified: Fri, 25 Sep 2026 23:17:45 GMT  
		Size: 78.2 MB (78172401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681d40bb6274e56bdcf761b59397863695d928453c8c7cd2188ec1471162d94c`  
		Last Modified: Fri, 25 Sep 2026 23:17:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:684d20a7b1ac12896b851293967bb4b8343ab44abb497ce9776c4a104033d5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31f553919ed795b2b2de30d9c1b30ded2e0e9604ec22a44662ef1e4ead29bbb`

```dockerfile
```

-	Layers:
	-	`sha256:340d7b4181a90a2718b1411e889fecd4a85291fd44ef7fdb7ff229100183b1ac`  
		Last Modified: Fri, 25 Sep 2026 23:17:43 GMT  
		Size: 7.4 MB (7406537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b651a58375ff40a73da053ebcd8ce2b809454e689e2f9e74603a1cdc48220e`  
		Last Modified: Fri, 25 Sep 2026 23:17:43 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c5b8031762d8de43808ea37a68349ab8545cf4e1b53446a7046a56c564da71b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269437840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0abe8cf243ee9edd1f85a0afa4b8d5141f6b28cc488355a03c7e68f95af1ec1`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:53:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:53:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:53:11 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:15:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:15:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:15:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad3740b0838749c770279e0bf7b7d97899a4b4768efc5838aef599b62ddc5bb`  
		Last Modified: Sat, 26 Sep 2026 03:56:34 GMT  
		Size: 133.1 MB (133094725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c121775c2775082d8a8a44d118411bc0f1bb58878caf54110076dd470a1a87f`  
		Last Modified: Sat, 26 Sep 2026 04:15:46 GMT  
		Size: 84.0 MB (83993165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3d4370aeda0731ef236d57b71977ede899168c01a448fa63ff1513e106b70c`  
		Last Modified: Sat, 26 Sep 2026 04:15:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bc8a2ca686887c6ff5c61bd9cd2aac953baec4cdae52f090ff18ad8167bd0795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf4a27ca67670f57e9e13e37913ccb350b11026d1f4319f3560e1fff8ac5d2e`

```dockerfile
```

-	Layers:
	-	`sha256:8ca98c0964fa59f2a425cf6a6869e963cae04bf6d0af76eafbdb50795b0c278a`  
		Last Modified: Sat, 26 Sep 2026 04:15:44 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3543471e26445bea9ae31116cb2fdf7f4913d1eacb5507d96cdab8ae7c7f167b`  
		Last Modified: Sat, 26 Sep 2026 04:15:43 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
