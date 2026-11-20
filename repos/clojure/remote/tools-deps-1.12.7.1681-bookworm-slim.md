## `clojure:tools-deps-1.12.7.1681-bookworm-slim`

```console
$ docker pull clojure@sha256:5fd28e41d8996983d832639224dbd7a7e732ede244b83e29121999d46fbb2b04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5e73c2fb697e9da9e16dac677d265f4747192edfcdbd06db183e424cb20a1679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187359837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2404d07ec3eb260312eebcd907f88e894b98472dacbac853f9d9140b2dba442c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:08:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:53 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:53 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce60214507b48e95928b85cb5dda53638eeaf598a8b22d00fc54061726d5e7f`  
		Last Modified: Thu, 19 Nov 2026 22:09:29 GMT  
		Size: 92.6 MB (92598922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2355dc87812647461f7ed6bb1f28d4b2df3f51b32097032d7fdfc12a4b51782b`  
		Last Modified: Thu, 19 Nov 2026 22:09:28 GMT  
		Size: 66.5 MB (66511385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d7af6a851c7eb24a6dcfbea0ccf6271b466be0cd3eb1df5fefc62e1d4ac1ba`  
		Last Modified: Thu, 19 Nov 2026 22:09:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30d2b6f22f34eef8b0190ddcae97739597e3bfaf4d19b3093119955ec313275`  
		Last Modified: Thu, 19 Nov 2026 22:09:25 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ae42b66a09380e132f5c2dbd55c1ff0f2952da8ea958948ff6645ba11cb9385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1ebc59effcb1980f3d7b6a156d0b63cbe01298a8539523b2ce58fd8f8d70e5`

```dockerfile
```

-	Layers:
	-	`sha256:9fe9f776f13d9cd08a956a94c53786590f4ca8b5ab58e0fd34dd2db362f4c741`  
		Last Modified: Thu, 19 Nov 2026 22:09:25 GMT  
		Size: 5.1 MB (5086199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22fd13d7d78f89f4abe091240fa7e4c0ebe89689419f32315fd06855304c6da6`  
		Last Modified: Thu, 19 Nov 2026 22:09:25 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2daebfa50f9a4a560cf37792a6acdce5b6da05f298c46719d1fdf1d38ce269bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186168584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681332c64ba1d481541fffa91cf7b0dbecec8d6526b91db318b9ce987aca9ce6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:08:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:23 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:23 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eaeef58d83da64b8af8233deeae23bd30451abc425939da54c612d71737454c`  
		Last Modified: Thu, 19 Nov 2026 22:08:59 GMT  
		Size: 91.5 MB (91525634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c88e49892599c265bc8702b81f2f88a2cae87d021114c6937f78ea5fde6c98`  
		Last Modified: Thu, 19 Nov 2026 22:08:59 GMT  
		Size: 66.5 MB (66497045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e466e85fec3a4bc7efe562e988cba307665f4b75b707bccc36ded680a401b0b9`  
		Last Modified: Thu, 19 Nov 2026 22:08:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8152012ea85815848cfbaf8b63be9ba66fd8c6250595697170c5e4099afd3787`  
		Last Modified: Thu, 19 Nov 2026 22:08:56 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:82dc1d9b5f1b9f42820d7b2a3a3faedfeea6a2c5c3c31c87bb186e7fbc136635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d4c3272b89f554fb524fa2026bdd422d89117e028602a5105befc0dca821f6`

```dockerfile
```

-	Layers:
	-	`sha256:11017bd4eaa33df754385886a9d7feb7434dad6bd4f07b6ebf0302ae10b40505`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 5.1 MB (5091981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65675c534104cda6f82b736ba24f397c34a8a2abb664eeac4710f0544cf30b8e`  
		Last Modified: Thu, 19 Nov 2026 22:08:56 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f693cef186df8f16fbc894f13dbad435af788ded4cb040eb83ea1156ab65384c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194540604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc99b9676d8685d9fb711c29da5ca40ef5783f317c9958d66dc81e3a8a0237f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:50:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:50:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:50:46 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:50:47 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:51:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:51:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:51:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:51:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:51:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52284ad81d3c9671949bd2a28e378e5dbb4707be7e48728eeed667646f1bcfea`  
		Last Modified: Fri, 20 Nov 2026 01:52:15 GMT  
		Size: 90.1 MB (90111733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e3ecc9a4712e188e79782b690ebe64cd373ce149770585bbf9242089bf616e`  
		Last Modified: Fri, 20 Nov 2026 01:52:15 GMT  
		Size: 72.3 MB (72333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c8c2c562db39656965324cc0170b2c79a91d645cd85832eb7ba1617570f2b3`  
		Last Modified: Fri, 20 Nov 2026 01:52:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333528a267384c911e9626e013d87cc0041822b00a785575dd687fa2510bc97a`  
		Last Modified: Fri, 20 Nov 2026 01:52:11 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ed043a91c9fe489be0265a68a88b68a980c8d25b5746a1040a0b78447bbf4a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95561a7999998954b101d95ab53d7d5813b276da969e36401479f5b24d701f4e`

```dockerfile
```

-	Layers:
	-	`sha256:c431f81af047d6f629e3f6e2d0c4eaf2c1be3aa0732bd1792ac5c6fcca5eb65a`  
		Last Modified: Fri, 20 Nov 2026 01:52:11 GMT  
		Size: 5.1 MB (5072820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddeedf7a3ddf7a23acc14ab05eb1fd0024351b941e8edc2bfaa1bce68b789d66`  
		Last Modified: Fri, 20 Nov 2026 01:52:11 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
