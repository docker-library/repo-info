## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:2ebc701a0f2aaf9cdf27d86166efbc2a098ebbd34e4144727c588d9f4fb685a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f40ed750686f21c342696779e4601170d69f71408ce4d914d05b6ebfacb192fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (183998793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acce70280cfc0c2b7dc6d08aa8e352684d0d024f8cc9972207e08e0b8d93571e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:03 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5101ecbafda7f4e4db10752d0fd1d4473855f3a127824d1e11ba25ad7700f6fd`  
		Last Modified: Sat, 17 Oct 2026 01:46:38 GMT  
		Size: 55.2 MB (55192298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b6ea64a1e5c9b8d8e3a7780a0bf29861f6ef8d0883e463ace7c0a433c619c6`  
		Last Modified: Sat, 17 Oct 2026 01:46:39 GMT  
		Size: 80.3 MB (80287828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5449fe1abade74476c1e05b3f48693c16fb23bf6fca82145c191dd6ef5da717`  
		Last Modified: Sat, 17 Oct 2026 01:46:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2a54dc24cb39322528eb3c2d45e78857fabf2a842c3b98a76364f90603ff2754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7a50ef3881db183ff967bcf9888c58af66d52f8162aa6711cc7b5f2f19a0ab`

```dockerfile
```

-	Layers:
	-	`sha256:0cc526551a895a7d03f3e1db1030e6fdcf75260a064c029d731bba17bcd1982f`  
		Last Modified: Sat, 17 Oct 2026 01:46:36 GMT  
		Size: 7.5 MB (7500994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:251fc18b2e4e2d1d8a15ae8435f9ebc23956e29a31a321c42c1972860998a610`  
		Last Modified: Sat, 17 Oct 2026 01:46:35 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ce0eddfd97ba68e233f963c0e19dfb2c64bb61fb16cb602f624385754e75c00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182898845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24c4fd70f9ee0f3e6b9bb4f7d3a1203f36c6afdbd48cfa6a2e7bbe35b4b3ae6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3147228754caaea3030599949720be7d4a16b76c0c30bae75809beb64956d8`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 54.3 MB (54254290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5cc9b3c9b3c89395c9d0ea76c3a77059df7894f4c5a766174a53e5f06d8dbe`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 80.2 MB (80242353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9b4b1a23a2a2419b54b7cbd1b093702e7bab153e29708f753ed7b517f2aea`  
		Last Modified: Sat, 17 Oct 2026 01:46:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fd6e15cd36fb02de9bcf34c54ac522f80eae88d79e632b51eff845156e0261f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5328e3a346f2db56a9a60e2fd3ceb0d5fa214a2ea88413e7a16965946ad59c8`

```dockerfile
```

-	Layers:
	-	`sha256:00e6c5f79cbb6629c6b3443cc0a87d859bea5e7d9e5918ab3784f59e7bc54053`  
		Last Modified: Sat, 17 Oct 2026 01:46:47 GMT  
		Size: 7.5 MB (7507457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1134607c5c3a431baaa3c2963352e329f3cc3df6ac3e42e5e6373d5c72faaf8b`  
		Last Modified: Sat, 17 Oct 2026 01:46:46 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:21e4d91323fda00cb339eaafc0bd5e020d7604e1cd13fe23ffe2930aa1bff2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191321485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed549a239758f18876d3154b4df4d8ad4b040bb590144b8c8935126cfce3be71`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:05:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:05:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:05:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:05:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:05:30 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:06:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:07:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:07:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b73d7a6e405c227177fdf13689621aad2f22b40a7975d81d9705bac4a08f11`  
		Last Modified: Sat, 17 Oct 2026 05:08:01 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8bcf266f29c7fc919e7fa81537286d71f088e640b936bdc1ead890bc690cb`  
		Last Modified: Sat, 17 Oct 2026 05:08:01 GMT  
		Size: 86.3 MB (86290986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bd5cdb7fd760211165a1525feef1dbd4609d390e016a7a09642bf9f1538419`  
		Last Modified: Sat, 17 Oct 2026 05:07:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8e5898f3a9fef2e409a9445806db483aef8e2f0328ea777e79c3b4ad24008e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dfe27f55a525b6b1dd039bd41034e17eb6966db789b4976782e9c65a90d6ca`

```dockerfile
```

-	Layers:
	-	`sha256:592d9bb32d2d4f9e7ad0f4cd4746c405a12aa3d16963b4cba49b8a2aaf9a9e10`  
		Last Modified: Sat, 17 Oct 2026 05:07:58 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbea8165a5d18375676932a7d9cf2668af9249db8389c0047159af6390358d1`  
		Last Modified: Sat, 17 Oct 2026 05:07:58 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
