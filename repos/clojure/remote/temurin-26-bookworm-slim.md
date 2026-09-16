## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:663c5a8930acc53f5b6f730ff9a5a36caa26a28f4a2225441dc127ba2ca51a01
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
$ docker pull clojure@sha256:66aa6aa1ee6f214f3fa6e23f26e5b8206bd4995f4e9e45600229c34750252a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189482351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53e1f5c50db971da8d676a1fd82d20c58ce0d1c10936554e745b51f5df11d95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:40 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fef3662ef4bc73886d488b6db5c82267d1cf368a716404f9be926227155a10f`  
		Last Modified: Wed, 16 Sep 2026 04:39:15 GMT  
		Size: 94.6 MB (94563716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18892153e54f5da2b49c050a3b9d08d05da735cb6cf40e42bdf00585fffa08fb`  
		Last Modified: Wed, 16 Sep 2026 04:39:15 GMT  
		Size: 66.7 MB (66684937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10b2fbfe0bf0fa4d6a655b8b47f0352309dc37514db668f46d3dcf2db739f9d`  
		Last Modified: Wed, 16 Sep 2026 04:39:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfa4c6bf9c95ed8a71e20218c5fd52d2fb39dc3198137a7542ba9bac7a5443c`  
		Last Modified: Wed, 16 Sep 2026 04:39:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ba887e860f26caf4052aa88f433eb7f0a2315053dc15eae62e47c99320797239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8d0b52da0c03a54d255e8a4cc55ec478ab6dcec8a38b8614ad7198c3077ca7`

```dockerfile
```

-	Layers:
	-	`sha256:109471e56eb81c4d8ba7b27c52e47c93db8f32b7685332236d8f48025ca4bd39`  
		Last Modified: Wed, 16 Sep 2026 04:39:13 GMT  
		Size: 5.1 MB (5084159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ebd3cb2aa7343d2533824087514896b83ed5b30cc26acfddbcea7d67561bcde`  
		Last Modified: Wed, 16 Sep 2026 04:39:12 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:82cff0986ac3e000af216fcb4d8fb9b1a79980b210e99c74e253aa1e7b0f5db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188343970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbfcc15f2f95f4ec1167605143b9e74f54b36729213f440dfbaf12412ea14e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:39:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:39:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:39:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:39:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:39:06 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:39:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:39:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146acfc9c8d1181d379cd6bb0ace562ccaf150db1dfe73080fda36517ebdb9b5`  
		Last Modified: Wed, 16 Sep 2026 04:39:42 GMT  
		Size: 93.5 MB (93541633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf08b6b41fe6fb503fcc51fefdcdc92bf4e4cd0d0c0017e88f8fffafccfcfc4`  
		Last Modified: Wed, 16 Sep 2026 04:39:42 GMT  
		Size: 66.7 MB (66684007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f826aa2d9761061bd2a53877ec9ecf70c70f57fe18764c5d91f2ebb64d4c18ea`  
		Last Modified: Wed, 16 Sep 2026 04:39:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12dd710ef01edf7808cc0ac0f385af2bd15b0aa2d1dd76ebb0c28ea7fa5db1e6`  
		Last Modified: Wed, 16 Sep 2026 04:39:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f5b5e0e551930b7286d69d34fc6a22998eb1ec1ed63fab3b96a239a7fafdc96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a3b8ad34633eb794cd319ba86659aeddb3094e44845ffb64273e0e4fb59cd6`

```dockerfile
```

-	Layers:
	-	`sha256:69e5633b156c0283cbfba11136c596a04e961d06e446936883871f909d9831df`  
		Last Modified: Wed, 16 Sep 2026 04:39:39 GMT  
		Size: 5.1 MB (5089917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a35e2a8789282c55b57d8af4f1fc555e768654c6b021ad30027ad144354e28e`  
		Last Modified: Wed, 16 Sep 2026 04:39:39 GMT  
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
