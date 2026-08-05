## `clojure:temurin-26-tools-deps-1.12.5.1664`

```console
$ docker pull clojure@sha256:2377becad95ce06c48e0af361c578f6416ac142debe0a9d41220e595ba89c621
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

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; amd64

```console
$ docker pull clojure@sha256:c1e8f321c3cf97b4499339a8924ca57395f514a12c7f78765798925e59204d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221166722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109afe441d3a391645f1fe06be5e64bed7461a636235149ba0367d0d12389dcb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:25:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:25:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:25:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9520e4a24efd80c63b7a4248706c0007934972f46f7700575468629100d36717`  
		Last Modified: Wed, 05 Aug 2026 01:26:16 GMT  
		Size: 94.5 MB (94524334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1201b43dc43eb3d39a381d9126ab5c117fa2030dbefa8b7c3b52596ae53f0eca`  
		Last Modified: Wed, 05 Aug 2026 01:26:16 GMT  
		Size: 78.1 MB (78144258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cf705e5f43f2970dc7de8a1b659bf6cab451a22aa9f53d1ba2eccde127c8cf`  
		Last Modified: Wed, 05 Aug 2026 01:26:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab067fa76c142dcf674497ab906c8e62463fd4296ba4e48412380aa34a4995dc`  
		Last Modified: Wed, 05 Aug 2026 01:26:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:5d7dfeb17b5dc679d41684cca954e308a0bde1d410c2a435f92edfe72b7248e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39a47902af88b7176ec0a5d077d8cd29465a26d76175e736b1835e8f1570a19`

```dockerfile
```

-	Layers:
	-	`sha256:853c82c2ddb0be3e39f6dbee9fbdf713577269040a05c88e6e766a8bcf7cb9dc`  
		Last Modified: Wed, 05 Aug 2026 01:26:13 GMT  
		Size: 7.3 MB (7341745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26decd113848fe94a35eed90a552e79af5dd945cbbb4a314717dd7f877d72a35`  
		Last Modified: Wed, 05 Aug 2026 01:26:13 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:99bf1184d47aaee6a600b191b1e7893693555dbdf684eae78d96c45a79a0e328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220017514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e09bddc74ada1543e526eba1f8b8755d73cc0b05a92bcce0f3f3b6a921dea26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:32:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:32:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:32:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:32:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:32:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:32:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:32:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2324f7367924e4b4fd0d28371a66968c3656061ce251d90463c79a54041c5e8f`  
		Last Modified: Wed, 05 Aug 2026 01:32:40 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9550d8a00cee6dcb0dec68c4d8270f87510a1ab7d5dc804560344c5e787daae`  
		Last Modified: Wed, 05 Aug 2026 01:32:40 GMT  
		Size: 78.1 MB (78128750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfef95b828c98f5d5dff2516ec161c70ad5a32f3078a4304aa0a47e475706ea`  
		Last Modified: Wed, 05 Aug 2026 01:32:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214b9066246142ae7052530c6ef7e3b1ba90e386ec8c653d0b18bc69c832949c`  
		Last Modified: Wed, 05 Aug 2026 01:32:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:ddb3b3191ef41e4aed6f5c549f22cedfa18d1e5efd1de18a290c7aa424448085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c32382e20ec7c5f6dee973ccc30aad306165f504f1821c2bd46cc65c4958ac`

```dockerfile
```

-	Layers:
	-	`sha256:f09a8f7b93dd5c633d0c77b2ef557524049479916e5e3f0d2a4ea37aeeed530f`  
		Last Modified: Wed, 05 Aug 2026 01:32:37 GMT  
		Size: 7.3 MB (7347529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8beedf7dda4fc014970c3b2b1356c5cc4f5329323d1c5cd98c38eaea33e03e2c`  
		Last Modified: Wed, 05 Aug 2026 01:32:36 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; ppc64le

```console
$ docker pull clojure@sha256:e237cc7107d36118df28a2dff6d4d3c1a94aa0d36995a750de42c0c1d02f6a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230218127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f836eb1b811ccd6616b5429cde7eb9a135fd8a02f58696376e327cd23dd6ef7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:44:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:44:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:48:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:48:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a4afed690d95682effdb883fbd3eb1aed486e270763f40a0bf7cfc2990345`  
		Last Modified: Wed, 05 Aug 2026 03:47:26 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020e675a86efd95851aff3357fd033557e8383a2b67d4d6310506e4858691f07`  
		Last Modified: Wed, 05 Aug 2026 03:49:10 GMT  
		Size: 84.0 MB (83973552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3453c076abed0c49c4e9bb87060a5834393e089c9d8cdf3a41b3d28593a4040`  
		Last Modified: Wed, 05 Aug 2026 03:49:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9ee882376e3b9eb829711377a7f60610a7d1e652ecedd18d0157cff56a4ea2`  
		Last Modified: Wed, 05 Aug 2026 03:49:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:5ca7b017b22b136925134022be71be3b88c9284214554fe938a6c88a5a8ccf1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d90ef3fa5c000961aeaa96421b6be7c8e7ad5d4de9f6fc6963b4e08707b80a4`

```dockerfile
```

-	Layers:
	-	`sha256:f356c5bde0b9439a3d35401b21fc2ac17240541b840bf51b068cb94380bce224`  
		Last Modified: Wed, 05 Aug 2026 03:49:08 GMT  
		Size: 7.3 MB (7330909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1279cd6d0edddd9b9c5b0f1f38395c96b6b4d99b9f1a934d160d95d02e26f35`  
		Last Modified: Wed, 05 Aug 2026 03:49:08 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; s390x

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

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

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
