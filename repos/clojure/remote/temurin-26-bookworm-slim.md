## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:cd05a7837caeb96723beab7018c28d0247684382dcf0a409dcf030c7aeb6fa2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1b6d0afe69a76c1de13017bbc8978faa410455cee049bc2b82815d6e0156eb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189482255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801bb80ca50097160b78cff3930075bf6aeb968aae6050a46d1add587337071b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:51:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:51:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:51:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:51:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:51:42 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:51:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:51:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:51:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:51:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:51:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f6beae79906092b4c7ffc5dd02898aadd658bccb4fbd12b367bf39b8e0e081`  
		Last Modified: Wed, 09 Sep 2026 03:52:19 GMT  
		Size: 94.6 MB (94563741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfabd0f153aa86e8e9a7990587d7231d3fa1f5306b66b0a80a1f0cf5b905be5a`  
		Last Modified: Wed, 09 Sep 2026 03:52:19 GMT  
		Size: 66.7 MB (66684819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff275c11649a660f3b5f0dc742309c6e973a79d7e97384e5497ae283710c102`  
		Last Modified: Wed, 09 Sep 2026 03:52:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a00eeb0d2a4fac4cff78228c6330597484201f0216c90f3c12ffbbf631ab5`  
		Last Modified: Wed, 09 Sep 2026 03:52:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:62248286166048c5ffa77eed14146ab71ded63fa951ce4d13afb83616c469bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6625f1ae6fb9149a25181a41de571b89c4177e5c2dfaad612241ff214170c96a`

```dockerfile
```

-	Layers:
	-	`sha256:921b41bb1b3edcfbc8cb0aecbd9e181f377e9c7d7742f5351e68fc24b84bfd69`  
		Last Modified: Wed, 09 Sep 2026 03:52:16 GMT  
		Size: 5.1 MB (5084159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ada13708c0722a84a065123535bd0d0a3194a674cbd01719fdbb7f3c1f0f6d7d`  
		Last Modified: Wed, 09 Sep 2026 03:52:16 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:981e3ee17cafe419804a108f78db9b0bba97d18e73b7b0608dbdebe16b422c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188343759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54937c93f047b2a170cc8581681ba1fdffb71550bcf4d4baf6700fe135443de9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 04:03:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:03:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:03:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:03:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:03:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da64a2fb3d7a69c1553dd9b6007a31201e5c31f93471384c4cb8d7964b5208f7`  
		Last Modified: Wed, 09 Sep 2026 04:04:06 GMT  
		Size: 93.5 MB (93541594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f33e16a04b8f3c726f02b9eeac77dfa164b449d758a87ec2730bd9fb921e525`  
		Last Modified: Wed, 09 Sep 2026 04:04:05 GMT  
		Size: 66.7 MB (66683839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93f21e01c4693c9d11dc5eb70c99797cde5f070fbddd506fe85e805704f5b18`  
		Last Modified: Wed, 09 Sep 2026 04:04:03 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b71de71adadece0dea2cc4df2c069622f68b1c15030fff227ac95eb01ee59c`  
		Last Modified: Wed, 09 Sep 2026 04:04:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:532359fb1bb0459e97a4b67186a869424a0cf9d2b9124a00ac71dc5eb4b155a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3a27b8500eb0686ac0766d80392ec5c0e9e21886f1506547faa54a554a7918`

```dockerfile
```

-	Layers:
	-	`sha256:dadf79b8100dbce3628ce30dbe02449f4b0dbb844d795923f1e8f226610ce006`  
		Last Modified: Wed, 09 Sep 2026 04:04:03 GMT  
		Size: 5.1 MB (5089917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce177e53c543c5062a29e180ce9c8ea7b6e44a1dd431e413eb2f953d7dda4e7e`  
		Last Modified: Wed, 09 Sep 2026 04:04:02 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:86db247df8013024ce8c52840db3b7166e4cefb5b19541e09536f3b4ad9a39ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197927278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6d2bae0c12746e02962893663216deabdd948d7380c7ffe65b327e6ca384a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:32:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:32:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:32:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:32:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:33:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca4b2377bd7f858a9eaa6c9fb71c0fc3007246e96523f3f7abc3de415ac8e4`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bc2f688e94a8ba60d62c4e6293c681d40291da723b7c5b6b3c5ada0d4c51e2`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 72.5 MB (72498949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf8205c8ba1a63d7e998482fbf5d7c159ef86993dc8a41cf529bcf8967c905`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843c341ee67e761468388d0dd82ce78ffdca7cec6792546ee8fd59b9abc9fbde`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3ec7b09e55fea674be6c9a0c1d4272c349ecae12f93da372cfcfc449a798eadf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b38f58928686459f409dd201e5b065a26b3dbe8c0a2a6a261d4360b9c718d1`

```dockerfile
```

-	Layers:
	-	`sha256:ff82dfded36e3a2f12f27a0d867a19f62883325dfa7583f59ef3681917b70502`  
		Last Modified: Wed, 09 Sep 2026 11:27:46 GMT  
		Size: 5.1 MB (5073225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2273158d79f9c2e4e27fc15c438ffc6d7c8e937f3304d306787c9a7c9ff967cc`  
		Last Modified: Wed, 09 Sep 2026 11:27:46 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
