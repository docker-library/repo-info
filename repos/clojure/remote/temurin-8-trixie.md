## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:9b44cbedce851deaee4e39341ccad146ef851ba100d0fa0f81054b7dfde592ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

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

### `clojure:temurin-8-trixie` - unknown; unknown

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

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-8-trixie` - unknown; unknown

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

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:66eb76d964d7f0cbdadbb345ed0a5dc183814120aff1ce789349127a97265c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193746319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39baf01ea8a35c9441530058969af4220f329b01af649d3846b9f2b5dceb217`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:49:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:49:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:49:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:49:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:50:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:50:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:50:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30c919863ebb65824364a781c39a167d6d9ac9906743d22cf54c3c88e10c26a`  
		Last Modified: Thu, 02 Jul 2026 06:50:50 GMT  
		Size: 52.7 MB (52669147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda28cfc1459e815cb3dbad4f8dd49c42bba4b785251fe79099e63c6b53eb3cb`  
		Last Modified: Thu, 02 Jul 2026 06:50:51 GMT  
		Size: 87.9 MB (87938457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c368362a517e4552732eeab9a6343de5da9d4034701cd4bb44b87d1411e885e9`  
		Last Modified: Thu, 02 Jul 2026 06:50:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3359e4b817b549869c355346d9278d4f3793b79e26045f2095bcfa227eb1a284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cccf3518238d2ca10582856674b8473ba557c6d7d40219d50d532de863562b`

```dockerfile
```

-	Layers:
	-	`sha256:6ca00562ecc2ff1551a674f81deb6802155b88ff3005158e49b83f9aa407fc3a`  
		Last Modified: Thu, 02 Jul 2026 06:50:47 GMT  
		Size: 7.6 MB (7594183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7a535585ba309d54729d0ad5741fd1eb72a8a6627cc7547f68c5f30564a9172`  
		Last Modified: Thu, 02 Jul 2026 06:50:46 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
