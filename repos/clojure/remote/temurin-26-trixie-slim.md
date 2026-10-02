## `clojure:temurin-26-trixie-slim`

```console
$ docker pull clojure@sha256:6408551be0d4b7f5d09ef307fb9d86552b184150033aa1b460fc99bdc80df1b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4247a4216b113ff17c44d03c6febdafc1a5697696cebc1fd9596b35f726bc5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196351356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e6909d0a682c98a3f2d2dbd5cdebc6b16d7794197301e1e709c2ac3270c6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:50:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:50:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:50:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:50:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:50:22 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb518af29142ed1b3eb5d2516c6adb3422850def38b7de5dc27ed7747c54eb26`  
		Last Modified: Fri, 02 Oct 2026 02:51:00 GMT  
		Size: 94.6 MB (94563485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f414c47497f457aec59bd19729612fc18437b499e6f7bf0b12c0d624414f47f6`  
		Last Modified: Fri, 02 Oct 2026 02:51:00 GMT  
		Size: 72.0 MB (71956412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab928623b34669d712bba7ebeac3e3bfb463348973cf78e0987effb88211033e`  
		Last Modified: Fri, 02 Oct 2026 02:50:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5137215f9b6ba413189e7be840723cf40afc93950fa4018b100704962ca9e74d`  
		Last Modified: Fri, 02 Oct 2026 02:50:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eca4c24e1be8c75f3ef5c95dfca7cd7095b142e155953b2b0222f171d4e47a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85a189cb100f56b2bdf39b034c7217dea9a4217856520e8b43283257442ea53`

```dockerfile
```

-	Layers:
	-	`sha256:ebfc16fa4660bf34116a35c50558ab62763fdd0d0b5c9d41f9dd91c2ae9da93f`  
		Last Modified: Fri, 02 Oct 2026 02:50:57 GMT  
		Size: 5.2 MB (5228207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33de02ab407ed83bd291b63efd9f4414f5af22a6972743f24466d9c4234b82a3`  
		Last Modified: Fri, 02 Oct 2026 02:50:57 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:de5f98dd3ee6f6527a2e9091ffdcbae74501d9b086c89c6f3312f7ad7ccb37ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195872638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b1126c22e81d12cb535a16ef690c8ff1af8a8da057c0e973eb441c04a0617e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:50:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:50:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:50:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:50:16 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09479b4c77e3fae662566182087a5003eb048cbc38c4aaa2ae2719de536951b7`  
		Last Modified: Fri, 02 Oct 2026 02:50:56 GMT  
		Size: 93.5 MB (93543596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a376f2eac95cf396b94d37021c82461103a9a0435a7c7e1d5b08455f081c6c3a`  
		Last Modified: Fri, 02 Oct 2026 02:50:56 GMT  
		Size: 72.1 MB (72138309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c7302c0ef7639baab56eede38795c5cd3eccbe9bcfe2182a861d727a16e129`  
		Last Modified: Fri, 02 Oct 2026 02:50:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699260237d142c9b3eecf1955b0e33913366e9932e95e1e44d3e3a9644cf8deb`  
		Last Modified: Fri, 02 Oct 2026 02:50:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:262a8e651309f553b830ebbd5adb100006fdbd1d9aded3f2fb1054d52a8992d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d8cfc39893acbb64fe1655c9b600302dbe993338b0cadcb2c6df7b9f286c63`

```dockerfile
```

-	Layers:
	-	`sha256:6265e46a49b47affd310bd63e82c545ea563c2eed983c91a7dc4280c17ff398d`  
		Last Modified: Fri, 02 Oct 2026 02:50:53 GMT  
		Size: 5.2 MB (5233965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aae272c49d852ea8a34aa1d8768bde1471531650ca60e49feb7e0846da2bc7e`  
		Last Modified: Fri, 02 Oct 2026 02:50:53 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dc2826770ec37e9e87c72301affdc8357b001474ede94c56b40044f6f8f291d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201405247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1d95a3168ff3cf44edd22b8b766cb3244d66c92be547eb05e367928aa04a0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:52:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:52:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:52:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:52:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:52:22 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:58:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:58:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:58:35 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:58:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c1d58e1ed8af222eb3223e09529d71227dfb66080508a281b43b31b69ab946`  
		Last Modified: Sat, 26 Sep 2026 05:55:53 GMT  
		Size: 93.4 MB (93350841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593f201c75981e9d9b53986735421bfd486501e270a6e82ade015d97ce4b8011`  
		Last Modified: Sat, 26 Sep 2026 05:59:15 GMT  
		Size: 74.4 MB (74412128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e466b65761d713d63e25a032c2abc07b7c7574c221c9374cc1b914d2923f532`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912edf1c72229afc89eda59ac4f8c03a98513ced26722257a8b355dc2e1cb9c4`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3c50b138c86eabe369f3d30a815eef5e2f5212b22cfc1c5279d38ae86d01ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954c919432da3defeb1c0a4b8d3df99ed266e2fef44950e7c86667b29a1a6778`

```dockerfile
```

-	Layers:
	-	`sha256:41934662293b7c0254034c4489bedf6b20c53a547db6281c6888e1ad111b0e60`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 5.2 MB (5216514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c82d729583128c921644617eae67ff3da9b325e68c6d6767fd2e6d5e64d7e36`  
		Last Modified: Sat, 26 Sep 2026 05:59:12 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
