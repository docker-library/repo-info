## `clojure:temurin-26-tools-deps-1.12.5.1664`

```console
$ docker pull clojure@sha256:f766e7806a73d73d6dd6e2c26b7e5e89eaa216d5c431a552eecdb5c9e1fea5a1
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
$ docker pull clojure@sha256:3df9ae36a89e8ab5dc286c6ea9343372099975d14b000ef23d6c3c51f3986c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221167365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a704a4a4c9465b0560c88daeaaf8c041869d0cccd5e8bc83579e753c59de553e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acebd8fbf3d9815399bfbfc645e2fb850fa828c0e35f59c97b92a76f4bfa1373`  
		Last Modified: Tue, 04 Aug 2026 02:56:12 GMT  
		Size: 94.5 MB (94524336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ec19bf5516049be8fa7e6bc462789bf421a62185b667cbb0d59e6556002aca`  
		Last Modified: Tue, 04 Aug 2026 02:56:12 GMT  
		Size: 78.1 MB (78144582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863dfef9db6c76c5640b78aa4af4198f0fe9be613b2388a7b5643a163d710e6d`  
		Last Modified: Tue, 04 Aug 2026 02:56:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ffcce6f74709e961f56e423263a988987839510887c9215a14287cb091c0c4`  
		Last Modified: Tue, 04 Aug 2026 02:56:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:af3d1e464517fd94f70fcf2c135116a2302a2b44ebc15192a4195cb963626242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3772c23258b6e1af6b86e81b50f2826738662fe5aa92a5149ea3f195071994b`

```dockerfile
```

-	Layers:
	-	`sha256:3fdb9bee005e7d82b61dff740daeb104312402f1173b92498925b59daae40c00`  
		Last Modified: Tue, 04 Aug 2026 02:56:09 GMT  
		Size: 7.3 MB (7341745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:735f39b1c2caaa9b04714897f6ad12ebc682d6599bc4a6ce77f0d0a61f517d69`  
		Last Modified: Tue, 04 Aug 2026 02:56:09 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:41cdadfc59434a73049c4a294882b6bf060b547a4ee3c6338d99c76337c244a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220018208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14df6fed5f0b4a5231682e92ef5e053891404fcdf2b5f7a4663761b21eecf421`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7ac083879451bdb43a2a87c88d6d93d6401b907cb2e8dae0867457da369ce3`  
		Last Modified: Tue, 04 Aug 2026 02:56:43 GMT  
		Size: 93.5 MB (93504343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f003ea399d930cd6f6d62d7a8f96ab95347712de887c707c23b27aac6342df3`  
		Last Modified: Tue, 04 Aug 2026 02:56:43 GMT  
		Size: 78.1 MB (78129131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3329bf56fdf33e882fafde84a8a92172b952c9703b98bd6a676fadc79ee5dc`  
		Last Modified: Tue, 04 Aug 2026 02:56:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38bbcaaf50127f107adda405758fe37b4dcbbe406ed6a50117e5402c6dfc0c5`  
		Last Modified: Tue, 04 Aug 2026 02:56:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:3f21e9a9ac827e2df4047911ec09a5c26b0a8cbf9e37286897803ca24a1149d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e712d980683b3e0c7438bcf91114798ed835eabd533e00d7c427ffc87eb3a32c`

```dockerfile
```

-	Layers:
	-	`sha256:cc7217e2661b1b96fd578d28db7dcfe33f0d3cc7ac7f6e5dbd816c4c897da6b2`  
		Last Modified: Tue, 04 Aug 2026 02:56:40 GMT  
		Size: 7.3 MB (7347529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3912d654773d9cff0bae9fdafb0b8ac592e352b0aef80758368c3836099d35d0`  
		Last Modified: Tue, 04 Aug 2026 02:56:39 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664` - linux; ppc64le

```console
$ docker pull clojure@sha256:58e0369c3148274c641a93084440cde437021bdd7e0098b9a217dd8e73811cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230218989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa9628f8a11623de3894d1fbcba949a42145f34d0618a0312e84d1e86f66d13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:49:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:49:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:49:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:49:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:57:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:57:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:57:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:57:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:57:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cb3912e499f0dd6b2ff21ecdafe7662e3cc06f89c64f11ac0b1e0e47e71d0e`  
		Last Modified: Tue, 04 Aug 2026 05:52:37 GMT  
		Size: 93.9 MB (93902052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff84a70cd3cb889e0a9e5c9414ec5377c0f075a5697bd48db6b4b3a1d4fe4b9c`  
		Last Modified: Tue, 04 Aug 2026 05:58:24 GMT  
		Size: 84.0 MB (83974061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd871986f8a2ee26be2882aaecda7bb0ae0ce0c741c4777e75dfa13cafecaae`  
		Last Modified: Tue, 04 Aug 2026 05:58:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1e0becef120e1d39ac70e3c8492860219823bf6ff6fdb500206083e30228ff`  
		Last Modified: Tue, 04 Aug 2026 05:58:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664` - unknown; unknown

```console
$ docker pull clojure@sha256:c247d56eaa3706cf72c93652ebc3a68c8ee1842ec960c8995da399753354c52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49007ecc6c5e1a6e3234e9a10f143b0e9f68d96b07fdddf16068760d5822d22`

```dockerfile
```

-	Layers:
	-	`sha256:cfd0a57c9675fe6896509761fae255c19b5c85c201fa94c17ebf4aa855606316`  
		Last Modified: Tue, 04 Aug 2026 05:58:22 GMT  
		Size: 7.3 MB (7330909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3ef2655396a0e3c124d88c42db0b327322d46af9e52e66b80b5734ac7a50ca`  
		Last Modified: Tue, 04 Aug 2026 05:58:22 GMT  
		Size: 16.7 KB (16668 bytes)  
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
