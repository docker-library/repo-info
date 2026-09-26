## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:1574fc39b43caa4424a29c827f8b2c34eacdf5a42b7e9fd5d410a34919e7919f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:46ca16f673c1c2d7c47a2d205b30e76f8d78d4e94f158485e966ec7890c638ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224565733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0e1508bf7bdf699341b11e21865171bce6038e859c39d5aa3483b93b3d9112`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:57 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:25:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:25:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0139001c984d6a07b177c4925caa560de67018f379c929ba3e515e7f52da4d6`  
		Last Modified: Fri, 25 Sep 2026 23:25:33 GMT  
		Size: 92.6 MB (92618041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6423de58a00dabb9ccd56d90fd7d9ce4a13078d3d8bfd08f5016b7d653658549`  
		Last Modified: Fri, 25 Sep 2026 23:25:33 GMT  
		Size: 82.6 MB (82566951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4dcd68218b82cde1dc29f8c8a01b526b6e39069df13fb9b307f10ed610e74b`  
		Last Modified: Fri, 25 Sep 2026 23:25:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c809ae1d60c45e51518e4dee674840bcf73a2322b2d06bbfd85a6a141d461410`  
		Last Modified: Fri, 25 Sep 2026 23:25:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b18ae75f38bdb0f766024c1980c2b8e14dda9bebb852260efb13741d9584b8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2168e0a0f33a7e3371b275f06833f6310a1b1d2567790408120d27197db3d6b0`

```dockerfile
```

-	Layers:
	-	`sha256:5f03711583987189640683c562b77780617faba0d910f905c35bfa6baff12018`  
		Last Modified: Fri, 25 Sep 2026 23:25:30 GMT  
		Size: 7.4 MB (7446884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d976213d4c56ac5753960b44a533c9ee3f92346bde26ba4dd98c7586f1462068`  
		Last Modified: Fri, 25 Sep 2026 23:25:30 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2cf3a052bfc779b0254c43f86ef0cb168a8d07e12914622a1c15bfec2fac8f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223668186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137e7c11c3243280fcfb44ab4e0d6a0412ecad751f7cfc870b33be1e3323a9ee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:49 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481d944de0ea6008e589dc203ac16387beafd810ec036dea11e873258a4dcde5`  
		Last Modified: Fri, 25 Sep 2026 23:23:28 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628f380e08edba4b82e3957b97b0f124e501d3f97a43e19263effe1d54250801`  
		Last Modified: Fri, 25 Sep 2026 23:23:27 GMT  
		Size: 82.4 MB (82389441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1df4b96c865237c25651f81cf3dbf95edca0140bbca7d8caa8fb685d4d31d6`  
		Last Modified: Fri, 25 Sep 2026 23:23:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443dee5effd57e9a077a8ae5e9356e5ad787a171942dc72fa3ec1c20d20f810a`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eab39ea5fff1d6933eecc56796debecd5ca91a63d98d140608bc66fe26da47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ec30fa73b138db97abf0787e2589fba129b886c061e7cced2edf8995e9d72`

```dockerfile
```

-	Layers:
	-	`sha256:eda000e26de5d17d301c7945341d07642c05517c84834f95e15f6564e3517140`  
		Last Modified: Fri, 25 Sep 2026 23:23:25 GMT  
		Size: 7.5 MB (7453298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdaad348a2971087857e1530edc4e0173768115f743e924a9e4f356787b6b9dd`  
		Last Modified: Fri, 25 Sep 2026 23:23:25 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8870386f8eaed93e8cb21185d7162672c4e0665e0af0b10376a0276748281b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232442346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea849d6d614c2d1a260065cb87e8c659f8ae493c6ad0f8799cad76752e1071aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:15:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:23:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:23:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e95fc9c7d0c89df3d3a2d12f1bde2c70dbb64d136f858732aabae2980ff715`  
		Last Modified: Sat, 19 Sep 2026 08:19:11 GMT  
		Size: 91.3 MB (91255826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6e0c11563bccb3803ed44cae87553d136160ddd6a8c5e3c31704d477bed115`  
		Last Modified: Sat, 19 Sep 2026 08:24:27 GMT  
		Size: 88.0 MB (87990404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855d8c55108336e27e1da9114fc83e67025cdba94f3053f7f3f06b24eba05700`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9860b178e3b728160c26824456de5fd476194fa38af89d464a0b77cfcf9f7ee`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:564703b4a7ac272300b6b09c93a39cc371035161430a6ffbfe278b0d37f3c948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3517cb9823554ad1b444da756fe255cc1c8bd7d82dd3f22ca3fb57ef13b2c155`

```dockerfile
```

-	Layers:
	-	`sha256:72f6aebb80300f722c60a6a8157612e1ce216bc4e776a4f2fd314366a41d08f1`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 7.4 MB (7434619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e361466531400fcd52204baac556ab3d55eaaee407f90277b892b957365622b2`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
