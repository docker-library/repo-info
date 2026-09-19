## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:e6704944ee8c65e6fd07509f00b51fb9d498f73164a38b28c410dc7c84123b0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f30a6811da78e8b56025ee2dff6ed488095dd06c00609780f8fa87092bfed84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240785414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18953d4d2597aebad4ae9519088e106cf683195b4fd32d18dc6e81dd46fc6454`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:14:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:14:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2a3e4d3ba2f51c676cc8f386ff941b69cc65b85f381e46d000b604d212239f`  
		Last Modified: Sat, 19 Sep 2026 01:14:46 GMT  
		Size: 145.9 MB (145861440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8320bec8ce9700d555ffbf3bb7228c13e1168b93b975f87ded2c1610edeb813`  
		Last Modified: Sat, 19 Sep 2026 01:14:45 GMT  
		Size: 66.7 MB (66684886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7342c051f9f3b3b452335c0f8ef08bbad67b11b90b226b1ec109f3a63e3f52`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1024de319200b992cd3e8c105de9be0c4c8050ef0007c431d23803dd6e40cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ee76122f18807bc0b7efb54e88a1a9e04e90d5acdaaf503b26d396befa91b9`

```dockerfile
```

-	Layers:
	-	`sha256:956eabfc17fd66492ec87733692a7f1dedc1bc8eddc1b7facb957846fd8336fc`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 5.1 MB (5138816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e32754e72d2bffa8dcb3d39ea30120195581f4141086600e5e2266ceb43a9c`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3ec8a9867d31efeb53f12137aceb5b4d6630fe624066a3142a9ba6566d3bd14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237367832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501f41eae14ca76f05aea40b9e001f4f9e3f1a245d7f294700f38c66af660499`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:09 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebcd8313ea2f9594ada51fbeda601eeb365d8258ff500048bfe9e002d507932`  
		Last Modified: Wed, 16 Sep 2026 04:33:48 GMT  
		Size: 142.6 MB (142566294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1980372d18d544bf5a833c4b31acba2c37df9c1d526850866c1251bdc474d28`  
		Last Modified: Wed, 16 Sep 2026 04:33:46 GMT  
		Size: 66.7 MB (66683602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11071e3253db6bef0a1c54b27704990bd7a880f6cdbf04cd8e66244e9080225d`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6425eed4fb2083ff9bddf3ae4973d6e4d581858f7638a11e6e090dfd4f9f0ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35884634fa717def17620bb835aa50d3ac4abb8f99deb86119a2b05393801654`

```dockerfile
```

-	Layers:
	-	`sha256:3479534363c4846e9def5362a54f012c8b5f572080f1b312bd06e7e20aaa9dd2`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 5.1 MB (5145159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44572fdca4bb07d8a0eff774b4a68425f5c15df56d05dcd03abc0a26dcceea8d`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:405f78846c1158bda229a5d68e1301ff90024bce0b0e63f3bc1d414c590b5eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237666638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59022af799be026926e049bb5ccf70e9104846271fc856e84dafefb122fdcdd2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:20:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:20:35 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:33:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:33:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:33:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa7cb4ef41f18485daa208164199634908eaaea8f24ce098d672d3dca053db4`  
		Last Modified: Wed, 16 Sep 2026 10:25:15 GMT  
		Size: 133.1 MB (133090163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce1e9c9582389b1173e6b3e2dae3a7aff5c25926e2cc2d0eae7d3c028cce6e4`  
		Last Modified: Wed, 16 Sep 2026 10:33:47 GMT  
		Size: 72.5 MB (72499352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c51f444bcbc8cb08b271155f0accf9e328fb2a2936b47bc533928b83f43af96`  
		Last Modified: Wed, 16 Sep 2026 10:33:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:432f18893564ba28e7874179caa3ab481daafd4d117d14a4a01534864006ebb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f634dca88003baa8a2147aba40e0fa65a21e812aeb4a52c2ee3407c9238e737f`

```dockerfile
```

-	Layers:
	-	`sha256:294719c54e261045d9eed4df79f1c0fe45fd2d8b4ee79785008b402e52a7c25a`  
		Last Modified: Wed, 16 Sep 2026 10:33:45 GMT  
		Size: 5.1 MB (5143323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:029617be0b8e34b8b508a7d56958e7b34c2dc346a06b710a42523f48af5fff39`  
		Last Modified: Wed, 16 Sep 2026 10:33:45 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
