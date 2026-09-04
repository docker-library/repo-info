## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:ac6c4dae2472186a468f4af6ed9d806d73445adef2a255f510b2e7fc18f64c5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0565b3c15fe5274ba3c28e6b9b39e291675e300c86d742ffdf12bdbfd7a6e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175480199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd64512e16cce2e233dea524f4f0529d2ee8f6220a32fbb0b7538830dfd5461`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:00:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa43b2204bc6b720240a1608f97f3bebf6df0b15769b7aa763cc11a4cbec14d`  
		Last Modified: Fri, 04 Sep 2026 00:01:23 GMT  
		Size: 55.2 MB (55164396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b4a015f997a0f107497fd5318291afd63069380706949f3ad0810821f77d4b`  
		Last Modified: Fri, 04 Sep 2026 00:01:23 GMT  
		Size: 66.5 MB (66537770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a74a476d827dfd5ba4a6b2b1d5f00a1a7b92dce7564e56ac28771a59621a6a`  
		Last Modified: Fri, 04 Sep 2026 00:01:20 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cd61a9dd6364a64ae913b0f0980525ad8cc6bbbbb82090651176285b2d8daf9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db781d2fe55fc199db28ea42b61d9c2598a1562dbb021a3dfaf4028b6b9bb88`

```dockerfile
```

-	Layers:
	-	`sha256:e90f4f7b05e1de46eabdf97f9b712225f682f3066d92323be239bada6e2dd4fe`  
		Last Modified: Fri, 04 Sep 2026 00:01:21 GMT  
		Size: 7.5 MB (7531012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a406ed963e1d803531abafa96f82144de96f4d30885c09d9bafed756a4d4de02`  
		Last Modified: Fri, 04 Sep 2026 00:01:20 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ecc35b2fb8d51ab12d837b29b91d45d102d26e4a2c9161bc6c36930ac05d51b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173225568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393156a99805ebd211ffc2deea21bd7932c38301201ba8425f1a36cb65a71028`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:03:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:52 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609a57b3ec2976f9c9afdb08b7a80f11b7dea8d929ad644d5c6a823870da6ee0`  
		Last Modified: Fri, 04 Sep 2026 00:04:26 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f2ada75de7227460365d1092d1d21acc59a16654299dc6c8e9933ff870b387`  
		Last Modified: Fri, 04 Sep 2026 00:04:26 GMT  
		Size: 66.7 MB (66700818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1002b7706c4cfbc46b122bad2d1228e7c92dd7a54217e271b3d8cbe3a5dc769`  
		Last Modified: Fri, 04 Sep 2026 00:04:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:02470746cc825891f72ef8f006a0ab6f5a0cbc73c1c0bb7d6d9cf3175624dcbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7551277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c9e462cdceacb34d7de85a3afb828e7e25ca26f75ce6353fe673e0ab92f98d`

```dockerfile
```

-	Layers:
	-	`sha256:33e2836cd129bd1a14842abd2f1c06f365db180b8d69a107c677a7241d90e14d`  
		Last Modified: Fri, 04 Sep 2026 00:04:23 GMT  
		Size: 7.5 MB (7536811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2305c1299a7b6c145171cafcd7dcb1fd2a00b004976afa019ecebfe964b30ed`  
		Last Modified: Fri, 04 Sep 2026 00:04:23 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
