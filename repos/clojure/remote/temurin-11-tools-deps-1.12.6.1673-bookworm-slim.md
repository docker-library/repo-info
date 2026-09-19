## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:bf954fda660afc10720ef7a4b118923ec7d1a786bcb41b48607040d30b91f3aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4b7e7fb5b9cf68bf240f6f8012b9d3d268547b0a7ee3ca7692790880ccefd026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237374211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b8b119429324862be1d8bf43adcdaa4a2f072aed1f35eeb347374b6f5403d4`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:21:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bf9971e57b62e68141e04bfb0b2c25d8c7cc4aa71a7b1956ee046e664014ca`  
		Last Modified: Sat, 19 Sep 2026 01:21:48 GMT  
		Size: 142.6 MB (142566278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074022a1757bd7a751bb20fe6dc25288862fa5bad81dfed7216b2949c2bd311f`  
		Last Modified: Sat, 19 Sep 2026 01:21:47 GMT  
		Size: 66.7 MB (66683608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d285462d6a910fa3e60d48351e0b1960b22cb0197ffb5f135254e97e7220110b`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ccb0b4bdf31bce169eae3c6b647a5d79f07fb57371d3a4aa06afd2df53566142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac246028f2cd932edfa9e8198ed04e8024e191268a33026f070a56366ab69da`

```dockerfile
```

-	Layers:
	-	`sha256:70367e2bdbb3533a95643cfe9228fb4e6f19845400629012d65c8e0ba86a4f76`  
		Last Modified: Sat, 19 Sep 2026 01:21:45 GMT  
		Size: 5.1 MB (5145195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c738671d29642216ee707199ce1deca68030bed5a32124027cb74529f231329`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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
