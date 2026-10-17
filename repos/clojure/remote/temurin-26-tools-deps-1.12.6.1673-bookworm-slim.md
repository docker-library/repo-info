## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:a79c47b1321a46e0b0e3f6a72a4a0d7b019c8772052758d6216b4efed3cef692
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5954ba4dab6f2dbaaf451262ff60271c8d612f45677bc5d0c170232605c31423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191600032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88988f2ab0f3cecd9394ba5c80dea711ff5fad8d9c264dafebf2caef89504d50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:53:40 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:53:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:53:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:56 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e838aa82c1280c46bb30cdc9e3ce6664cc3ae476223326f6f014295bc689e67`  
		Last Modified: Sat, 17 Oct 2026 01:54:16 GMT  
		Size: 94.6 MB (94563530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806a754ac5bfff0e142d115f5cd3ea4706b7ab111137b65c102e18fac0f4b50`  
		Last Modified: Sat, 17 Oct 2026 01:54:15 GMT  
		Size: 68.8 MB (68786136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4a7e4828905787d84b2d28af9e787784fef916a017ed28fda70b55b9a10cfe`  
		Last Modified: Sat, 17 Oct 2026 01:54:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffdc82996fabe9d79f3a05c56dd669d4d8816c62c47015c5cf5129cebcfeff2`  
		Last Modified: Sat, 17 Oct 2026 01:54:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e9328f373adc3e66a65ddb29c195e9146f2f4b6744054e0391680390c2c30c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0addbc915e7ed67df61f033876e9e044e03156a6e358ae44a7bf4627bdf744c`

```dockerfile
```

-	Layers:
	-	`sha256:e2dd6a9432b88f6159b6d483d8fbec86f6b684d7fa313124172dff4d4973474b`  
		Last Modified: Sat, 17 Oct 2026 01:54:13 GMT  
		Size: 5.1 MB (5084201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5053fdf769077a576c6968fea2e3f001401493b6dcc5f86cf28158b526596651`  
		Last Modified: Sat, 17 Oct 2026 01:54:13 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d130d93a2a35c54c2eb426734832e074d405627f723970d7613bcf845ce82d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190427404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956ff516a22658f70888dc14c8091cf9cf24a7dbea0f50861350a7e5cc04a9fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:53:52 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:54:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:54:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:09 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de96a434e49246f877988def25e9b7f65c7af42a5ac326015a872822760c11e`  
		Last Modified: Sat, 17 Oct 2026 01:54:31 GMT  
		Size: 93.5 MB (93543597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790022197a5476acc614dcc01f354aba3886ee8261ee601941cd2f0cafc98887`  
		Last Modified: Sat, 17 Oct 2026 01:54:30 GMT  
		Size: 68.7 MB (68745585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50efbf5701acc433e25d27eefd360393a2e7ea98fb29d4aab36a41cf9a2dc27c`  
		Last Modified: Sat, 17 Oct 2026 01:54:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a740b619700d13269de4bbdc09f020ea13fec3e8c01aa323505ffbc0eba18b8`  
		Last Modified: Sat, 17 Oct 2026 01:54:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3f97951555384dfa5b179407b59217044441ebd30cc23dc91d8b7d4632b6b56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0d5e0433d2a32b8ef0a56d0afbf4a2f6a0e078a61189bf9bc1f3597123f77d`

```dockerfile
```

-	Layers:
	-	`sha256:4652ab95bdf83692675a6b33b538b578b448f6ad0ff7adaf19b7d471096643d6`  
		Last Modified: Sat, 17 Oct 2026 01:54:27 GMT  
		Size: 5.1 MB (5089959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9cc06ecef6ab74a43841e0410dbdd541fed12de8a911141bea3a76951afdb9f`  
		Last Modified: Sat, 17 Oct 2026 01:54:27 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4e01afd7a8af4ebf065bbe5ab13dc825448d9a4eaa8c638c580c7fff7b156f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200230008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1282c8b0477e1389d5bcc10a5effa6779744cb74c20068d6d75634dd53927ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:35:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:35:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:35:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:49:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:49:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:49:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:49:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:49:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40af87593f1c5a108df58f7ffc4a520346ada86e027c1d6399ef2e273da14e4a`  
		Last Modified: Sat, 17 Oct 2026 06:38:53 GMT  
		Size: 93.4 MB (93350855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43c7c13bda2f92703a551abc2c6ad30380da988d53dd108b724e628aa3520c8`  
		Last Modified: Sat, 17 Oct 2026 06:50:07 GMT  
		Size: 74.8 MB (74785677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4335fc03bae9b24f60a4ee74f612092fe976101b9cbb26d3f1ce1d548d5ac9d`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f143359cdfbe2b794ed18a0a3958d6464af7d038a9931b9519d5ce87afb569`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e45d3f97026cc4d356c42535eee632de8dcbcfbe9bf88063dcbae960eeb98a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed746e3e82fe3fbcdb5af9d268f1b5f391d7b345e159b6670fe6a553271fb73`

```dockerfile
```

-	Layers:
	-	`sha256:c5e619bca8f570516878a45e1f87a49c6648bcfdfc2b101cc31aabf64e558439`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 5.1 MB (5073295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ba4d71f395b82c00230fd8d89d3ee1b3f0a08f0f7a585bfce74df9687cf4ad`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
