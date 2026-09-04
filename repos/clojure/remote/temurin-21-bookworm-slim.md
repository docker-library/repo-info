## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:68206d80d5220e837202e4551602773c74c244dccce1c232b8e68d28a5f99eda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d49f1b4c9f5c4fd1ab698bdb49975b97fb3559c2807b1fb724cc74050222d961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253038874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e36d49accb9daf0b98610fa3aee847729b42184a2c8746c4eee2f07a0fe74f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:03:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:03 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01e3e6b0a59bd21156edf1a788dd8e564743f28019c159608fda63ad52fc92b`  
		Last Modified: Fri, 04 Sep 2026 00:03:39 GMT  
		Size: 158.1 MB (158120295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223e69c3e8e66868d71202f7ce3181691cc40b74eb8fe4d4df675a7c7f722701`  
		Last Modified: Fri, 04 Sep 2026 00:03:38 GMT  
		Size: 66.7 MB (66684879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460dd7ca801ba594c3bf049dcf6bc5d24bca773b03858057b9dc4e1b4d67a6cb`  
		Last Modified: Fri, 04 Sep 2026 00:03:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cb38d6017c55450e4310792180c067fdec550f62b2fca005eb6f077780c256`  
		Last Modified: Fri, 04 Sep 2026 00:03:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ec12487f8d771dc135bea047dafb46a98d913ef6e88c3fcf5b454103cf0c053f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7640c7f3cc3871b55773785143f985927d96e0dbc281d628c656cf86e408bc9`

```dockerfile
```

-	Layers:
	-	`sha256:df645d5df565f45213b3b781077ad458435ef3b9fa85049a7782471cf390a76d`  
		Last Modified: Fri, 04 Sep 2026 00:03:35 GMT  
		Size: 5.1 MB (5121088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d88a8fb5a9184edbe8ebe91820b9c05cd922182e02b86cf0b17e9186f25b115`  
		Last Modified: Fri, 04 Sep 2026 00:03:34 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d15834ef7fe39143a549f3bd0cdac7663b8c8cb982985a5f6c077d6de03d8859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251204251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdab687bcd1f4c9d001bdcbd3bcbe1d8ec29446c1817da0c04f228e8116a64a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:07:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:08 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:23 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb2e0914dbbd82192b05bb46f3704b525377e55b1b1745427b6bd6247bbcc05`  
		Last Modified: Fri, 04 Sep 2026 00:07:44 GMT  
		Size: 156.4 MB (156401949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b7a7d8697237690dc3f5ffd61b7f450b7c8a97fb76619bdbb96fd2c3a8e954`  
		Last Modified: Fri, 04 Sep 2026 00:07:45 GMT  
		Size: 66.7 MB (66683974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e285d4f7b8bc2c76071d162ef5e2fe3478ef4a91b91911641a3384ed3a8c6fe`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c805c1ef363054cab239e31c0a99f0f54e6efece57ed3543e77a3cb01c86b230`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ac9e413ce11d780cef06c16281c714fb83dcd5444c5347b66dda8675787bd552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea402509ada786d5b31bbe573d705392849007bdabab92389a0027a7069e92c1`

```dockerfile
```

-	Layers:
	-	`sha256:95678209ced40c0774e98eceffec9879988b3233e6c983ec38991674665fe376`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 5.1 MB (5126849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83be5144e6eed5e2f6153479d8286602fd54150c7b011b4d7fdf59ea2b148055`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8f9c278b7632220fb806493ccdc8c4a5221031053740cc7a0412c5a0dc729297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262851266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed505c3b8f26283b6fb10260080341bb4a331cdbaba92e4518451175eff29432`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:34 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:27 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d866b20eba167def1cd6e612f1d7dd17ba8fe02043e41bcb160cbb8bc3c90ab6`  
		Last Modified: Fri, 04 Sep 2026 00:22:09 GMT  
		Size: 158.3 MB (158274917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde327c20342ccac360a596d5bf5f95928e0365cf5a11ce8ed530c58a5d9d4f9`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 72.5 MB (72498830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed8d61d6c38a770f7388d8bf2aac4455c4d5762e608f94842058a17e50dc9d6`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb43243bf8a5761ceba9c4d6bb3c728f2cdb9e77a0eae9847d5c11d26dce23a`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9fa8481e193ea7572d16e4f76569ab7ec0c8308acd364f8e5684e3d4cc635b08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99eb947172b2e1ae9712e3006145f3cae2ae62228af6e3356cc4c832760b65af`

```dockerfile
```

-	Layers:
	-	`sha256:4445cd157418b95b351e633c9207fdf8477ad6e3ac79261263a416a6b313f55e`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 5.1 MB (5126246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b51bdb2a0d203c5ca904d8674bb793904cdb9cfb414cb13696d5ad77a3c9a72`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
