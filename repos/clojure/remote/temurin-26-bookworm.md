## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:6dbf6fa4bbe67b3710d92efc5f0179954179fa29d55a7f149eb9dd6eac684cc0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d29f5a4e0333f35a064cacc826a3682fca2336fe9e751d55316cd86af4fefc70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221225692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cfa862f9edf2c698bcb712e56e00ce8b7f599878b61a5cb08f55d3ba32d0ecd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:23:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:23:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:23:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:23:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:50 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6716ee90eb8dac52f823588e5feda3c3ed0fe2f56b0b49dcfac5ce9c0116eed`  
		Last Modified: Fri, 21 Aug 2026 19:24:29 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2c567f94ec253083021454ff8e26d2539b489cfa77cb22913e6dd76d8739b0`  
		Last Modified: Fri, 21 Aug 2026 19:24:28 GMT  
		Size: 78.2 MB (78163777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a23a0696eaa101f5abfe565091d41a61c9532eb2131930f31df3e76859940a`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76590aa4b9d75dc435190f43e78bd866de0bee5f7710e6d6ce212df36a4ef142`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1a4dfa5b8a5324445533c8d56099c67c53214b208b813e7aa5fa971650e69fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2d56726c47c8689cf69e34600673bc1286cbb5d5bafad5917bb8cfd66f5e4e`

```dockerfile
```

-	Layers:
	-	`sha256:f6ba6d0ae3e2e08b042c3d4c0474b9c9defb2450319f73a62b4890927e3d3433`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 7.3 MB (7346950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45f529e9939128bc05213e6f21ff8784c3a6908b20652568ea20f0d27ae2fc6a`  
		Last Modified: Fri, 21 Aug 2026 19:24:25 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:41c00ab582e7f3d233ab9479ca98aba9adea57c3787f8383ca039ebe49dbc6a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220071698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33534937d6c1b7bd48f9efd28bc40e137910af9be8cdfe3343a0c0c864816c70`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:34 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f21db4568a770c85ebcfb1bd3dde04d970de5edb71b0d5c6b08a2b92d54ae3f`  
		Last Modified: Fri, 21 Aug 2026 19:13:15 GMT  
		Size: 93.5 MB (93541562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ef70f3f50142b0120488a74a1d2c7f715815d28a0ac1bb6a191e9fa4aa73fc`  
		Last Modified: Fri, 21 Aug 2026 19:13:14 GMT  
		Size: 78.1 MB (78145716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d420036d4da31e2c7671d41c66070142d8bd5107dbbb73577e70f13185109e87`  
		Last Modified: Fri, 21 Aug 2026 19:13:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68361300c1b9d6e69485cf7d3c936eb39dd7ee25c45612ccf00be60cd7fbeade`  
		Last Modified: Fri, 21 Aug 2026 19:13:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:128b0e9afb68a752623af160ae211bc73c2fe6a6f72f11387de84b84e4f81810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b188c0376ce006382fd10ed02a7134eb93ba667e1236afe181d2bad3686936fa`

```dockerfile
```

-	Layers:
	-	`sha256:15f8536e9a1b01171253468ae30702a0321597d148848e6b28275fed04b6e8e0`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 7.4 MB (7352734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c9ead4dfa9fdb958c0cf16ee68bf3178aa555d171b036919b30789891b65f64`  
		Last Modified: Fri, 21 Aug 2026 19:13:10 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:24ba4201edb4cb70bcf898a4ac5f2878702c28f36b73935c73c246dace11c278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230223101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d4bb29456308742cf197a06a82d3d529ff8f8b6320a12a7bf2433e7d59f742`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:41:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:41:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:41:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:41:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:41:02 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:50:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:50:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:50:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:50:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:50:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f58526e30cc94ba4fc63d4be907fe3e1336bc95c0f01d9360d241ea14e481c`  
		Last Modified: Thu, 20 Aug 2026 01:44:34 GMT  
		Size: 93.9 MB (93902096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211aab293bd497c54c7dbc8ddc82e5d8d097109ad4cd8a3c76af75be6eefa8c2`  
		Last Modified: Thu, 20 Aug 2026 01:51:08 GMT  
		Size: 84.0 MB (83978488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22085419ecaa3621729f15b144c7be6b8c70a3be2b0a0e56a99e78ccfe66e23c`  
		Last Modified: Thu, 20 Aug 2026 01:51:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139fe2b468b201d97a8c8c348c3076f512731d76bff350f8ffdcf0482e559f9f`  
		Last Modified: Thu, 20 Aug 2026 01:51:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a9ae389e69eb13d8ea2ff9a3fc792f2616698f0a7dd564b675a01f01c2457180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208de931f37224e2e010d6f5db696750e3f33cd81966bcc6675ca10d4ccc4a6f`

```dockerfile
```

-	Layers:
	-	`sha256:7f76acf790cb162e7183755ae669ed2d88cfdd2811e260154adb4d2d66378986`  
		Last Modified: Thu, 20 Aug 2026 01:51:06 GMT  
		Size: 7.3 MB (7336112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d294b29b1ae97b29a2bc5eddb6c8d60c1e44c484442e8ce5f49064e292529dd`  
		Last Modified: Thu, 20 Aug 2026 01:51:06 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:74ae15e8d49d10da3142bf8d8429bf3350f31e76d66c46fd77d8e9dd8813efdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214631214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8108825d2b7921275a8911b8724a8ab7e8825ce8abe0ccc18283b00111648c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:04:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:07:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b100b02d9fadd7ef6d3dd60d05e61617db916a5b1014ba714029c6f60cb0a65`  
		Last Modified: Tue, 04 Aug 2026 03:06:19 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fe1a26221451faf85d366131c3715ec502167ce932f03f242a4ad415ba4b36`  
		Last Modified: Tue, 04 Aug 2026 03:07:37 GMT  
		Size: 76.9 MB (76935903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c1b284be461c062a53a2373e53b33038908cabed6be4680cbea09ccf939c9c`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aab8806dcf55470a7d4830792b807f09cb9d10bf5e3ae9066a467396e9d4cc`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3136f56fde3b66405f631033db38556995cb1a5ff0856cb84aa536e77d06ed7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed649ce11ecb82bd2c8705ed2de67b0726bc883407ff2f76c7a129953c56fcc`

```dockerfile
```

-	Layers:
	-	`sha256:07bd0f9c34f83b0f624f34bd18b780318cd1ad03b38cc3ba74857769b80d60b3`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 7.3 MB (7318250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439adc531cb70784f177fdce81a4a9c76534ff9cf43f25388467a27a77ad7259`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json
