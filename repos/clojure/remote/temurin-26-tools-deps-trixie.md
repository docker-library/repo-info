## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:1d9fa25a7a5273a8a84d991b716bc1ab47c9d159f98d8c3979d719abeb87413b
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

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

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

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:b28d781467fc2a268b44c651e1ef69bc43bd993e9f3d335420425e175065306f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234976042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df821b2de1b351b439dc0c7c5b18711cd45587df4ec958f484db54e65c58ac40`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 03:11:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:11:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:11:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:11:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 03:11:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:17:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 03:17:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 03:17:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:17:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:17:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d802252fed6a86e051f7ebf1a7a994303c8a02ebb4ed0ddf62f95be98271b5`  
		Last Modified: Thu, 16 Jul 2026 03:15:14 GMT  
		Size: 93.9 MB (93902046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6312a1b04128ac7d276cb3ed295f1e781257822cc7ba8c5b53d6411468a0590`  
		Last Modified: Thu, 16 Jul 2026 03:18:31 GMT  
		Size: 87.9 MB (87938941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c59fb55a5c911edcf4d77d7bbea919450a0e4ac6f0d767bb35453d2bd3e73`  
		Last Modified: Thu, 16 Jul 2026 03:18:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c77a65491d28eebc0543d73eb0e375acbf790c99bd117003c21eae4c70096e`  
		Last Modified: Thu, 16 Jul 2026 03:18:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a8a321dee4423d3a03ea31493d835bd25a5cf09328fd2e0bf292e4b6d844c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2ba66844bb2588d46f8be36dcd08f62711f9bf3b0ac0e1dfeb5547f0e7d2af`

```dockerfile
```

-	Layers:
	-	`sha256:ba685d58330298a511e65d879cd6558a5d6f8916d9c4529a8ed7188e27f2ff06`  
		Last Modified: Thu, 16 Jul 2026 03:18:29 GMT  
		Size: 7.4 MB (7422109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9379d0456e65f977cb31ed61614f13872f325649cf5b0edd64aed16879a204d8`  
		Last Modified: Thu, 16 Jul 2026 03:18:29 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

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

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

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
