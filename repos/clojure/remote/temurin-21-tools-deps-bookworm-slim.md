## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:750aed416fafd29c2841d513961a942466761e21b05d8e4416950e4383b48fc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4b4602b9b8680b9c0a418ae29f0f2acd114bba0109bb7283a59b95b4b891fb22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253038575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6122149c64e1fc583419a18eaa8f534e7c7094179fed5df7cac9c3ef623279`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:48:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:48:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:48:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:48:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:48:44 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:48:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:48:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:48:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:48:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:48:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8801ef369ed9f7e12536c149c61be0c459589ad0c8599381c5cf2cbc90bb66e`  
		Last Modified: Wed, 09 Sep 2026 03:49:21 GMT  
		Size: 158.1 MB (158120370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aecf08ad80b696f7c970e523861e98dce0cf82e78faba429d32c1f005ceb40a`  
		Last Modified: Wed, 09 Sep 2026 03:49:19 GMT  
		Size: 66.7 MB (66684509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92e8c34b2825f86e7a5648d758bbdd8834f6617678494d6493cf04fcf75223a`  
		Last Modified: Wed, 09 Sep 2026 03:49:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3381047482467885d5cfc570090ad969a0a1e18e8e0121553106a7201e3f3dca`  
		Last Modified: Wed, 09 Sep 2026 03:49:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b9ab9bf4a0bfc1d72794aec7774a76a58428fb305810e5f24e8e1a04d86b1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5fbdccf0a787824f740c1a31883c2050c48f59a6443b53d24871e67a3187d7`

```dockerfile
```

-	Layers:
	-	`sha256:13a8a38e3a04c940f79d49ec13ad68c44c542d60db7c5b96cc3a41b090c490dd`  
		Last Modified: Wed, 09 Sep 2026 03:49:17 GMT  
		Size: 5.1 MB (5121116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39e9e76b21f03e736f1c4cb5c58cd2a1f92d79d55c150084ec12afd13cace587`  
		Last Modified: Wed, 09 Sep 2026 03:49:16 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ddb6516632059df3e4e033fcd083df907ec68eab1d6b302ff5d783c15723b8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251203932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bff731690a8a3b33202a18bfaac2820d6849c1aa006ec16e1eda089c044af90`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 04:00:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:00:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:00:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:00:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:00:05 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:00:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:00:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:00:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677742779d0c78f75ebadb66a838bcde5fb08110a693d9c133e9f56b9495fb70`  
		Last Modified: Wed, 09 Sep 2026 04:00:46 GMT  
		Size: 156.4 MB (156401929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ce972dc63273f26ff19672e23efe707f03c7a6130208a4b94a6a12adea88ab`  
		Last Modified: Wed, 09 Sep 2026 04:00:44 GMT  
		Size: 66.7 MB (66683671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9c3c7b7c3ba69ac9cf981cfcc97a1d012e482bc68ee523f17b897d7d97c769`  
		Last Modified: Wed, 09 Sep 2026 04:00:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cae7efe30d222984d219e4ed7f6cbee340b39228c6459e26b2525a37bc0afc0`  
		Last Modified: Wed, 09 Sep 2026 04:00:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1aad9ed583651560698881f6b80d1af9e379138238cd6cf22262f0fc8f36dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a357f8bbfce406a9e64cfc130442b0018d555036058cc1e0e1b7a64c616e7c47`

```dockerfile
```

-	Layers:
	-	`sha256:f03712d0a3b52e4dd02d243fbd9c7a0d2925c782b51c0eee96201b8e6cff14ec`  
		Last Modified: Wed, 09 Sep 2026 04:00:41 GMT  
		Size: 5.1 MB (5126877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:227328996015f074afd6d402da5dae4d51400ed35929c783ffda6c8633f0d4b5`  
		Last Modified: Wed, 09 Sep 2026 04:00:41 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a2bbd1c0d8362d7efe9ae82283eeb0a31393d2f9ce13b88cad5569ca791aff27
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

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b9e873d863c44ba8dc46a4b4ea85f2b7a093ae45b22cce7f78f2e4f5d7fd494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe052333a6d9209eeebae0610240e8334277077a675a14f35b65ee11de11d45`

```dockerfile
```

-	Layers:
	-	`sha256:1a3e4ee29989a7b14a858d8a0b30a12b2637a9d994a6e93dc995157b79cd179a`  
		Last Modified: Wed, 09 Sep 2026 11:11:06 GMT  
		Size: 5.1 MB (5126246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0980532f403774b7f6ff695e1e2895f449524ac1e05fee0e485df48c3decde7f`  
		Last Modified: Wed, 09 Sep 2026 11:11:06 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
