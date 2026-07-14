## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:bd95c95b2c5664ebc10d1110e1ae96f2fa1db1900e1fbba2b04b1e7774d92447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:57f70c69d106d1b612087b0b5f67ca50089da8a8edfbfb36d6fa3ef37aaa5244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187044469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f3c4a0ed910d9581af4361d3b7fd53a01fc9398a496edfb4cb80b7bdffcfdd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:15:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:16:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:16:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc2d6d0fd57bbcb90ba7ca7f1e8fac9a0925b95191e2ca3cf198dbf167cc01f`  
		Last Modified: Tue, 14 Jul 2026 02:16:27 GMT  
		Size: 55.2 MB (55198716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a4f51c56621673afc0d58f7375b6bfb2db7ed00d634bdbd9fb2584f926bace`  
		Last Modified: Tue, 14 Jul 2026 02:16:28 GMT  
		Size: 82.5 MB (82532537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed740a75e7cf3355961108d46d4a7dee30126fee49c04ad2dc418a7528b2938f`  
		Last Modified: Tue, 14 Jul 2026 02:16:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9917bb400e7c1ddb96580a9b2787df497399716fd6573487c8199338e5107e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d6ae25f84f8d87c2096a1cd8edaaaa3613f62b773b2da8b1c2fff414586f4f`

```dockerfile
```

-	Layers:
	-	`sha256:258f81739a2d29ce18586540bc00657683562c5368a7c33721d647763e1f4714`  
		Last Modified: Tue, 14 Jul 2026 02:16:26 GMT  
		Size: 7.6 MB (7589221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24413aa7136befec3af47c6076dac279c2bdded84b913b8614cfbee0d3cf6297`  
		Last Modified: Tue, 14 Jul 2026 02:16:25 GMT  
		Size: 14.3 KB (14321 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:68aef984c3744021c44843083e2d0715cdc36afa99d42a74d12db3aa734b4acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186291660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb58a0cc423b486170eb24b97f3795d8cd12d1ccc4d2fabf4e862f39306f9f43`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:22:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:49 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c5f3f39a4b719296917b78848ce745d4770fdead2a96fc7c6eda12851a829b`  
		Last Modified: Tue, 14 Jul 2026 02:23:26 GMT  
		Size: 54.3 MB (54272936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930414165e9e77142c03f43a80f657da14a1237ea60db6840b4c622a80ec3701`  
		Last Modified: Tue, 14 Jul 2026 02:23:27 GMT  
		Size: 82.3 MB (82343895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd81cf9f41340db43ec56495470ac5379249b2bc9ad2b425a5e41d877a1fae9c`  
		Last Modified: Tue, 14 Jul 2026 02:23:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:787f691196193e4a3e6ccd93a4a8ac74f71c95ab61702d035c098bf9522436e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083371bc5b9b1ffc6c8776f4dbb4d703dcb718ba5c7de3035848eea359c0a9bb`

```dockerfile
```

-	Layers:
	-	`sha256:0f9f01125c430140f9a291d552119d2896ac454272d4a5af4168f476cb9932bf`  
		Last Modified: Tue, 14 Jul 2026 02:23:24 GMT  
		Size: 7.6 MB (7596314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5191c40b29c3f0efb42a597268089ca07cdf9e0a2e1f93b6e6c895b77963b130`  
		Last Modified: Tue, 14 Jul 2026 02:23:23 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c594c2716aa43827a3642ece2ec7388a2559375253fad2e4852bbc8a6517ccd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193743153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09138dd7f16ee1e50cf93eb68c3d81df49482c6542f114bd619e6dca8c28aa6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:08:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:08:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:09:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:09:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:09:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98de14463b033902c972737f0843fe5b7ada892cac80e596b3b57ba96cd62348`  
		Last Modified: Tue, 14 Jul 2026 08:10:27 GMT  
		Size: 52.7 MB (52669153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830cc77ae4ca5ecd716a926d0475f7f1d7db80a9ca64a3bfbc9bb85f2fa2d00f`  
		Last Modified: Tue, 14 Jul 2026 08:10:28 GMT  
		Size: 87.9 MB (87939344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a85c88e4053cba24e57b72b6808312cd2eb1ee9bcbc8cae48687223f9d2a37f`  
		Last Modified: Tue, 14 Jul 2026 08:10:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dc0681e1b104fec7d346092f401857ae0233bad71ee1d7f48ff43018d6040be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f046e62e78a187757c58a381440cff6a98c07dfad4103cfe6e359da5a5646e2e`

```dockerfile
```

-	Layers:
	-	`sha256:44ae6f14e06d8e7ade7c8ceb4f6df417dc961ddfde1385aa0557a700401680ff`  
		Last Modified: Tue, 14 Jul 2026 08:10:26 GMT  
		Size: 7.6 MB (7594237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:347a4577e8f112e05edd552ae8400e618e69e1fb0759169635266e09eb4b483a`  
		Last Modified: Tue, 14 Jul 2026 08:10:25 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json
