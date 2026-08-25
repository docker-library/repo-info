## `clojure:temurin-17-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:92527ca9c3e453c6585327ac2cd861b75660c4edc269d52e5c427392cf13449a
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
$ docker pull clojure@sha256:28e16b7badd127796977214e23507318b172b0f2fb718bd98a7951f77dcc70bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277674965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f7876b9acdabe647860f2720fd2db85192e8de6a093be6a019b617416ce22e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:14:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:16:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:16:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfe23ca63260c31c11f4e759ec2f3606cb42f535a1311e64ee5394ebed7f5cb`  
		Last Modified: Fri, 21 Aug 2026 19:15:40 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d07f786ea4eebe9b69e17775fb30a420bb9467eb1b8e5f8897f0410b7a134`  
		Last Modified: Fri, 21 Aug 2026 19:16:28 GMT  
		Size: 82.5 MB (82538967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d613a3f71936ba8bc49d0a011ffe5632eb0f857572a08dfd6a6d9975828274`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144cb8e14b4f17e4d15f90b5cca0d649f2e6ccd00d3a7991d7c7d6764b32d87`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b3a986664b97f6a790e5a0d2bcc1c9a38be2d0ed8d4d872a8d383675a1e4015c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7483844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67be952db592d800f2898fbe492ecff9d985a48e96eb587943e27a539cde5cf1`

```dockerfile
```

-	Layers:
	-	`sha256:21aa5c2b8c3199c6aef8c9087bff910132513d8a1bfb1205cb8a50357bbf040c`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 7.5 MB (7468891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45aa5275f95d3074beedaf7e133e210a43c2f3b60d480bcfba0efa2a99718001`  
		Last Modified: Fri, 21 Aug 2026 19:16:25 GMT  
		Size: 15.0 KB (14953 bytes)  
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
$ docker pull clojure@sha256:94f3b1f4048834d21c18d6fcbbf3eb7a8b9afa8fb65c668d0a1d8e04556622ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286759812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952b5c3e15565bbbb46383da24bda39159072c3c11b71051c7f65e553c1b93ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:54:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:54:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:54:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:54:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:03:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 22:03:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 22:03:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:03:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:03:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64269a486231fffab2666570443518a8aabf8a93e1e1703076e7aedd2229f4e`  
		Last Modified: Fri, 21 Aug 2026 21:58:52 GMT  
		Size: 145.7 MB (145674278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c07f5f0aac4b7745d2ac6645764fb20beb830ad9a52ec6476cff036c9957b7`  
		Last Modified: Fri, 21 Aug 2026 22:04:17 GMT  
		Size: 88.0 MB (87950887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc24f8ac8bf542ed5a2810f970a435acfd1efe1e5c8b00d059ae9f2a093119d`  
		Last Modified: Fri, 21 Aug 2026 22:04:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd876d7de0612bbc512ef4f7c74597430cd57bc17f8980c804d3cf1034bef789`  
		Last Modified: Fri, 21 Aug 2026 22:04:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f7ffc2a6e84466975a895a641b5b0dac940201390c695ad84ac22f7e0f2b6dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3428f1dfbe8639797a3799a81a54851739ebeef3059474e1674ff65ad0e393`

```dockerfile
```

-	Layers:
	-	`sha256:c27f4b89a53e44d357ced719a242482d4af001bd7e2e5a6fbb2202fc7993f5ee`  
		Last Modified: Fri, 21 Aug 2026 22:04:15 GMT  
		Size: 7.5 MB (7473312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5ce0fc2e7ca89414e82960fad5aa8b0e4c1d641d5b4bdc1226bb38cc50d4eb`  
		Last Modified: Fri, 21 Aug 2026 22:04:15 GMT  
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
