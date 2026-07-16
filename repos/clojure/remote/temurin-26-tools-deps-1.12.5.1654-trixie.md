## `clojure:temurin-26-tools-deps-1.12.5.1654-trixie`

```console
$ docker pull clojure@sha256:8993c1c0969f032b5dbec70cd92fe81979ee1c109c114b38f4df4005af9c9880
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

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:54d075c59cb824b5901a5b0dbfea0e9d26e4d4e41da00f4aec1bb15076391b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226371258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a10e5b5c066398f5aa2b1cc0c5ca7cf96484b14aa95fc85644eae21e13093b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:37:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:37:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:37:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:37:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:37:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:37:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:37:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74815b5c258e162e9fe8869404cafb7722bdf6659502da02d10bcc602d033402`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 94.5 MB (94524333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14abf964f3b247605771faf34eb157591db79e64b6377ee5111a7ba54dfde5f`  
		Last Modified: Thu, 16 Jul 2026 01:37:43 GMT  
		Size: 82.5 MB (82533311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ffe78b8d34841d4b7c95f887eb942449ba17f6c79c667fc59bb45f57d4b4a0`  
		Last Modified: Thu, 16 Jul 2026 01:37:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a15f906f48dc8c965bd81bccef58b3b451ce17dc8de0a0a5550bb8a081a7a`  
		Last Modified: Thu, 16 Jul 2026 01:37:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5f3581a38b62eba3358125c2251b0d22b76cb35db189586deb875219b8f0fd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1d80cf3f67a17c6fd2010eed429187378ba3d4c58ed5caf1092823095c734a`

```dockerfile
```

-	Layers:
	-	`sha256:8e43c92ab969a23356997c058e781be4e6c42626e1d179d2bba75e6a850cc850`  
		Last Modified: Thu, 16 Jul 2026 01:37:41 GMT  
		Size: 7.4 MB (7433752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dd387e34d9c8d32bfdc4008e8f9fd38d831db3f30c73fdca5c4af34da2ef7e1`  
		Last Modified: Thu, 16 Jul 2026 01:37:41 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9f73f65b63580acc08709a4d6f5f254ab0ac1b42f1d91b8919e7108fe061eac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225522703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b267d75ec7fd84f76f6b92444ddeb945bfbbb1cb04477db577b2642184d2b338`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:33:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:14 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:33:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:33:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da1b443e4ce703cebed565532dbdb617e37e83b904b10026dc41b08ce29eb8d`  
		Last Modified: Thu, 16 Jul 2026 01:33:55 GMT  
		Size: 93.5 MB (93504375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee902ad9c6409c1868a47b12de0afe1879ed5a6545817ede3b22071dcfb45782`  
		Last Modified: Thu, 16 Jul 2026 01:33:55 GMT  
		Size: 82.3 MB (82343103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f6c0e4b748070ea6847cb25fa5a575dfe2e4b8ca131eb3f3ea1c6dba6f1785`  
		Last Modified: Thu, 16 Jul 2026 01:33:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5e78eb4a40c44be7d8bdca8764d9d0d747529b704c505a5ad55001bd1e2830`  
		Last Modified: Thu, 16 Jul 2026 01:33:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8f51843a8be6be52754c7eb7bf6169f886ba5631010d1e543a980505c2c76d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f632985791097b334e144584d0f57150c1953f8b3c17444d51224959217048a1`

```dockerfile
```

-	Layers:
	-	`sha256:b8ad3b562c2b547805123ea9f772ac0044cb011d22bbab1415094bf8d35c1325`  
		Last Modified: Thu, 16 Jul 2026 01:33:51 GMT  
		Size: 7.4 MB (7440142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bb7332dd2a76630249d9e94bb20a7aa45237975f7951b73e74684eeb2e75099`  
		Last Modified: Thu, 16 Jul 2026 01:33:50 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a57f98b05ccbad05bbe88e5a21f165d34ab53794ece104496399ef80c89cded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234976181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b2e6d5a2aaa4c22f7749965490ac8fbcb6d923ee5b34a50e5c8c26e12277e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:58:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:58:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:58:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:58:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:58:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:08:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:08:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:08:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:08:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:08:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7badcc1fa9ad746ebb9552e5881ca4910ee681cb7bbcd6cf93c7093d66707`  
		Last Modified: Tue, 14 Jul 2026 09:01:17 GMT  
		Size: 93.9 MB (93902052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e928f10d90848a031bb9ed20a033f601ab53710a4af9d4b80d7b90f9d6c21eb5`  
		Last Modified: Tue, 14 Jul 2026 09:08:50 GMT  
		Size: 87.9 MB (87939076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1977481b78f58253542c1297f219a0e2604e5baaf4eaacfcb0cac28dd92d8d`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949272154d630567ff30a56d22bc6aabb365e2f866d41803ed9a9be78a7fe9b6`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:491b9a6b0747a0b5f740f1e93bffe3183750740402b72fc1727db15fe472ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ee0f2def05048b4c9508f9304c5582b0eed4f67486c37549fb170b8b05d497`

```dockerfile
```

-	Layers:
	-	`sha256:f9fccf0d6914fb4d4c7107656aca40d326f5e07f21afc36a074fb2fe28927633`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 7.4 MB (7422109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18850c68df05704ebdeb93eddc4aa1478c13ca3d08f419d72c177b77340cdae5`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:e906df8113c410387b4cacc4d33c5badc2ad31299287bf882e7477d932ff3107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223421891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ced40728ce0e3b88fdb34c2e7310467ab0dd51423ea5d9b9bf848ed00e640d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:56:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:56:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:56:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:56:12 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:56:12 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:58:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:58:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:58:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:58:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e385edac4a6ffe9bee6dffedf7d4ce5e8787ebce3861b348b7396fec4ff129`  
		Last Modified: Thu, 16 Jul 2026 01:57:59 GMT  
		Size: 90.5 MB (90536933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e0faaf5f63fd0b3a4a5139c2a3753072d8d2582c8cf437b62a5fe622037b1e`  
		Last Modified: Thu, 16 Jul 2026 01:59:00 GMT  
		Size: 83.5 MB (83502208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d9818f7ed71da6b17faf7cf607f84214c22207657a7f22b7b52c07c64a7`  
		Last Modified: Thu, 16 Jul 2026 01:58:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc8709db14045cdae7474ce8d1ecd3b931006db6e90f5000643ba00170bf483`  
		Last Modified: Thu, 16 Jul 2026 01:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6982b137355ec83e5233135e826789cc28fb847b403831e67909b61a248b756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b6ec0ae48529f6f60937d44fb39f89c1f4fc908d693a1aeaee49be42df2893`

```dockerfile
```

-	Layers:
	-	`sha256:97c46eae31d22faf65cf4da5eddc6d03ce3b6367a81dbcc2e43a12343383c86c`  
		Last Modified: Thu, 16 Jul 2026 01:58:59 GMT  
		Size: 7.4 MB (7414860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3955bd66e84dc47dd94660c8272be9bb31e951bce86aec38d4110202293f3`  
		Last Modified: Thu, 16 Jul 2026 01:58:58 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
