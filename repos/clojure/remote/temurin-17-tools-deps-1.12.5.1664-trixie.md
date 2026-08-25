## `clojure:temurin-17-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:b0204eaf831622fdb1c7e7c05b8fdc7ad131a3b8931bec689e84f9f3bb8fe67a
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

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e0969813461ad2a5202c2e9f8642302b2c992f4926df8501b4d0859e494de7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277700619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525ea3b496b3dbeca6f921c77da6c5ca15f3ae9ca5c6ce6907ff26c92381c72c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:28:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:28:52 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:29:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:29:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f47a0902d55ab85b79518e2332e7da0250560b78bbfdece2d3815414cb2389`  
		Last Modified: Tue, 25 Aug 2026 01:29:31 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909b174af8d85164c5baa9c47d4597511e3f0ef2fc3270f85f4ed3b96199946a`  
		Last Modified: Tue, 25 Aug 2026 01:29:30 GMT  
		Size: 82.5 MB (82539107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f148758827cb77f99ec238a1c3c8893e7bdf36a2b0a3cc675248c3891967c3`  
		Last Modified: Tue, 25 Aug 2026 01:29:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb2e789ccbd0a95d76a6c9dd47a6ac5522acd480d027db8a01fcc76a895010c`  
		Last Modified: Tue, 25 Aug 2026 01:29:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:512681eecdb8524e34dbf88a99b21fc4a4e91ece890e3d63d9fd9477c0d484bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5feca9095fc3c7561b2589150001323233563bce0f092b28a6bb5920c7f2c0`

```dockerfile
```

-	Layers:
	-	`sha256:adfaa0b8290c9cbee74d1591e708065a768abc0037ecef977205804fc2da8c04`  
		Last Modified: Tue, 25 Aug 2026 01:29:27 GMT  
		Size: 7.5 MB (7473869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18cd7c08b25684a60979a4f5a77cfe866866b8fb331623e70b75e2020c975d08`  
		Last Modified: Tue, 25 Aug 2026 01:29:26 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c81ee4c6c13ebae000efa80d818a6ca1df13729f16441374ad9caff7057a8175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276712754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37af5f57bf9e16e142e275e32eb5b210eebe0af19d5c5a65dc01c3a5e14b5f81`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:06 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2337d34e1b0612c2dd6d061e9c33ac6b027313f661bea7ca01113feb1022fc9`  
		Last Modified: Tue, 25 Aug 2026 01:33:48 GMT  
		Size: 144.6 MB (144647500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3712f59656398a84ab1296ca2f291ab709eaf0b9f779f7a46e47eec2326f275d`  
		Last Modified: Tue, 25 Aug 2026 01:33:47 GMT  
		Size: 82.4 MB (82359359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a1c967ac3e512f5cead4a2f5e2f5d97a5f9f902e6319f14958f2617a7dc260`  
		Last Modified: Tue, 25 Aug 2026 01:33:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddf7bcbb389ad9ba7166aac639f0e910a7ffb8fe9f76ecf7f070bd5e8dc18f0`  
		Last Modified: Tue, 25 Aug 2026 01:33:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c793c4cb772ce8414897ac114d501a5ad769df7825bbe9fd5f9105bec04395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369a70f934ae9f9d29093358f971bf204bf631c1b066b39d074b52d117dd0ab6`

```dockerfile
```

-	Layers:
	-	`sha256:5a0df136d717197696e6d477479274ffeaf81888d5c64800b3cb0d41cf86c9c0`  
		Last Modified: Tue, 25 Aug 2026 01:33:44 GMT  
		Size: 7.5 MB (7480262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d50f799817f700b4add0e631c461674e4138bf0ca75d636e05f7f168c15606`  
		Last Modified: Tue, 25 Aug 2026 01:33:43 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:520d02d21502b9b8ecf655cabfbfb4b6620a7d4b19cd7bc3599e25abe84e8b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286790000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06afdefc5312ce7ffe86993895d8b0ce3924d784ff9f22f66a398c83576558af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:21:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:21:36 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:28:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:28:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:28:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:28:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:28:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325684583cfb9d8f4ad29d21cf8ea44a6f7d66b1d18f3941dfd457c2584e0f74`  
		Last Modified: Tue, 25 Aug 2026 08:25:57 GMT  
		Size: 145.7 MB (145674314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a6db03350fa2adc2186f06f10c1068de22bfe2f844b567ff14c7984a34bb9b`  
		Last Modified: Tue, 25 Aug 2026 08:29:20 GMT  
		Size: 88.0 MB (87950362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0f32e3e7bf2eb0b41a9747e69d6a8a8d2c22563e8fa1c7fb64db5b524df434`  
		Last Modified: Tue, 25 Aug 2026 08:29:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ddbaf32e71ccbb67fe9e7cc9680a2bcbf6122234d0962e81235ced0597d95a`  
		Last Modified: Tue, 25 Aug 2026 08:29:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:921fdfd7598f6b0ad295bab5b144441c9f43a79354c257e7505b307b6a4928bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf914a2ff6b7fe6f4512d53572ecd3a9b2699e18822031c7246f5ff656ad1`

```dockerfile
```

-	Layers:
	-	`sha256:5e79bbdd49ee4ab5ad8a3e60f80b4335ed6ceacf3cd81235e3035c1a486bb8de`  
		Last Modified: Tue, 25 Aug 2026 08:29:18 GMT  
		Size: 7.5 MB (7478290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36ee8864bd4e5914a0bfe212332e2d3b1d0fc8689129f2dff98ada5640abb6c`  
		Last Modified: Tue, 25 Aug 2026 08:29:17 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:9254ac411a82d4d2137cb66d51ecdf46a5de4028bf2dc42d1c7d1dfdc5d28979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268798283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb4709804087b93348d7f1aedcd3300be4914caba6e4f9741c493d425ab78bbc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:07:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:07:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:07:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:07:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:07:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e78d948f8e0573310bad160ed3de7785531cb8d2cd60934401f4d0d1f9bb51d`  
		Last Modified: Tue, 25 Aug 2026 02:07:54 GMT  
		Size: 135.9 MB (135871017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fe6c318f44d85a1cd4b0bf1974b6159e7c46c55a8f665191b225d7cef2e1ae`  
		Last Modified: Tue, 25 Aug 2026 02:07:55 GMT  
		Size: 83.5 MB (83519527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffbd7fe1937d9771eeef04212979069c991d3c7d0a55c1cb18e00f7aed2ea13`  
		Last Modified: Tue, 25 Aug 2026 02:07:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1886ba4a70409608c03159f926205739e1c6eae248afc4867e97d0dbba2fa37`  
		Last Modified: Tue, 25 Aug 2026 02:07:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f17af2082c77e7562052035b4a3e9f5fd3cbb8c3cf017f2f750c591b6b3fa710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c983c98e9a8f532f83366e06f332ccac15d0d9425cdce8e5760a917c0cea10`

```dockerfile
```

-	Layers:
	-	`sha256:077f85fdcaded6255646c42de5701a94696a87eafe6878b440ec90f8ec2a8165`  
		Last Modified: Tue, 25 Aug 2026 02:07:53 GMT  
		Size: 7.5 MB (7469791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36daf7705e364f3399173c99bf22d3ee27172f65c040f4665c7dd5c2ede8ee10`  
		Last Modified: Tue, 25 Aug 2026 02:07:52 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
