## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:71644f9beef002a59cf99b3062ee3223bb65e6a1dece3ec7722e5eb5d6d564c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:48159d8b316bbf0b38733f0832c9b924b92044e0017246c7bd4855ad38f1121d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290088664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666d40ee857c92f9255de093ba3f41eaf7215584c00b616499e34b764a513d33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:51:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:51:23 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:38 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3d2227f54d2f7b3870f5f16703fb208a73822f2f5794b52a3f403a5fb6f56e`  
		Last Modified: Sat, 17 Oct 2026 01:52:01 GMT  
		Size: 158.1 MB (158117492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a5c7c757c9b50946185d234f0314008b856f8671411d515b0e9b502597fc14`  
		Last Modified: Sat, 17 Oct 2026 01:52:00 GMT  
		Size: 82.6 MB (82576935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f228831cf448b9f49a19fffc48be70f73b7bc0448f3491ef39fa8dab4fa437f`  
		Last Modified: Sat, 17 Oct 2026 01:51:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ca2d96869f3fb90579c3b7a0711c0e458784d2dcefb01a657e7ea9a2241e24`  
		Last Modified: Sat, 17 Oct 2026 01:51:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc2508bf750e3e9ee9bde6b5709012eec4399de97af9b78cf122b9bcfb1f2767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d97ffb7fd4ba36556b1457bc1034cb837fa8b2698e50a4309c6fe6749f2b16`

```dockerfile
```

-	Layers:
	-	`sha256:299db5076d6809c0375ea197e7793fe50d6324b550152b1771ddf08f97bc179a`  
		Last Modified: Sat, 17 Oct 2026 01:51:57 GMT  
		Size: 7.5 MB (7480672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59e1f6aea9238819292bb9c3e00aba1919399f5c0ce8b6ba0ea9102a6b4c9186`  
		Last Modified: Sat, 17 Oct 2026 01:51:57 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c860afa0d5b93ffac6bada68ba21c44d29964fa657643e5df5f6901dfdfc4ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288558685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1377e8118903b9e1413ce95c1b9ed569f2f009138dcc61e60d67bba09a6a8141`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:51:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:51:39 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4ba342157199e4e60593e2951121b1b89fa610b11ba02dd4f30b131fed951b`  
		Last Modified: Sat, 17 Oct 2026 01:52:23 GMT  
		Size: 156.4 MB (156400686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4195f5f0b0685b3da2a5e18fbab220fc9f2706bfbb839089ed7d304cb8a61914`  
		Last Modified: Sat, 17 Oct 2026 01:52:21 GMT  
		Size: 82.4 MB (82395852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2093ce7fec4f35d00f326fc2d6c194f5a5ce05579b58650372b86b27dbacdc67`  
		Last Modified: Sat, 17 Oct 2026 01:52:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340c54d90087746b252fa41b598dab99b9bd716d93cb0b8b07a5511c1e8d23aa`  
		Last Modified: Sat, 17 Oct 2026 01:52:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:58acc1f5eae46f99f4a8420e14d478d2e511d79570b4100119e682a951b322bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90504436b6d3f3b7e906b18bef7787ce2cc37b985fdf87f9d0a102431e2e791`

```dockerfile
```

-	Layers:
	-	`sha256:662cec57121df144f6a815154474de76681074272b84b700156756a9e6977512`  
		Last Modified: Sat, 17 Oct 2026 01:52:18 GMT  
		Size: 7.5 MB (7487065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cb7589555fb8851a08428cf3f2dee542cd1e2e56a7e3630190d01f4eaced3b5`  
		Last Modified: Sat, 17 Oct 2026 01:52:18 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fffb237980829f58468fe0406f9d7037ebd66e83bf04ca747f0d29bfefa2c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299486374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68767900b9d0d56d1707a7346b43856aab3a88ee577211e9b3edd2c0440b3610`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:03:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:15:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:15:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7696acf7ab9b391fe05c5f773ce243f2009dfca860bdc385909d39000d72c04`  
		Last Modified: Sat, 17 Oct 2026 06:08:43 GMT  
		Size: 158.3 MB (158282652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cc45c5d4d7229abc83958ec4ca0f197406c8aa57820e347245e6d80cf01e7b`  
		Last Modified: Sat, 17 Oct 2026 06:16:48 GMT  
		Size: 88.0 MB (87995554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337e9ac5abde21373f5d6ae1eab4bea6b188bfaeb581f01c8ed12e8b832f048c`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942a9ff11d92f39c431cdd0d8f6b6c1b640ce0c9afcc0adacdc5fad5e05cc5be`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:83f2ddc2804191fbf5482614ce84f6ad38ea5e1b67d1e0e60b93e95ec190cf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760d23fca2acd90402d8cbc600f4ce73d00ec72bbdd4a7c201751cb1006110e`

```dockerfile
```

-	Layers:
	-	`sha256:f0985e32602eada7ace781d4f8a779adcd8fa275bf1e98a01e9d64f516f2afc1`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f2627f84e438c7c74968f6c4a71a07002e5e18afdf86e2bcbd7ec09ee2c3856`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 16.0 KB (15954 bytes)  
		MIME: application/vnd.in-toto+json
