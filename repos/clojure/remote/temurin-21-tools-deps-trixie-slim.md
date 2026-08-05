## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:67f12f3513788c243c123f812d8968ce493c755e83765f400495548fcc237312
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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:839123a3054397f62d808d726bfeae10b6a7ed777af0b201b91683d336d36c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27c16378f34053650c4cdb08b5e459b68ce7218c4bcb90aa30a2d221ebb22282`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:23:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:23:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bafc39406c911344385f448dd13156522809dd8c971fa2397d080538d3d1414`  
		Last Modified: Wed, 05 Aug 2026 01:24:19 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fc7944e6ea9ab3876d95b4072e2eb20ba347e2605884ad285ca5740906ad99`  
		Last Modified: Wed, 05 Aug 2026 01:24:18 GMT  
		Size: 69.0 MB (68964660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0769c7a4e2526525681d1501a58c10e58dc229fd3171fc15353c1d39ada358`  
		Last Modified: Wed, 05 Aug 2026 01:24:15 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab496ac47137bc523b12d7a2b6f63d13afd646585e6d8c3480fc6ce87e74550`  
		Last Modified: Wed, 05 Aug 2026 01:24:15 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7a899692e06fa3188f6acbbff3ebf99e6ca7c5f275987ef3bdb092f2df14a279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942e0f40c58075bc9765af20f1c242b794c898873c3c4d555c6ba70c97ab8ff3`

```dockerfile
```

-	Layers:
	-	`sha256:5c25c2e996b759400119385f0f561cb556e9ac9edeec151481b53c9480f38db4`  
		Last Modified: Wed, 05 Aug 2026 01:24:15 GMT  
		Size: 5.3 MB (5259216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06a74072dc21a1838afbc991b4aa23e01b91e1c5023a17f8b7af9012e03f2882`  
		Last Modified: Wed, 05 Aug 2026 01:24:15 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:26bc030749a470a3568068efc7404c1c61c84be0937d506da92b411ca84b41ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255392362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e36a1139537a7c17c95c5daee756eeee0cbf35510f1e0fc0898c00c6b3ba049`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:29:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:29:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:29:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f317dca28acbe1f4041226a90e2affab37f67c21499607de88fbce632c82e249`  
		Last Modified: Wed, 05 Aug 2026 01:30:08 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc37becd2d6da71872ffccc0ffd48eafb7618073d5ac11b8394775a3b45dbf4`  
		Last Modified: Wed, 05 Aug 2026 01:30:07 GMT  
		Size: 68.8 MB (68786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3f1002759c452d8e7c028255c9854284ffd238487183f8efc0721a36c94338`  
		Last Modified: Wed, 05 Aug 2026 01:30:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41a454510e82ee36daf62aaa53b019edb09e8e5c94b4bfd643e15edebdc7667`  
		Last Modified: Wed, 05 Aug 2026 01:30:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9a3008ba67d98db4dc6beac1d4c1eaa00a82676a7e8f8ea68e2802b6972d440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbe5b181585b8de985d6d80c898494256204e53e8923089438312e47ef613e7`

```dockerfile
```

-	Layers:
	-	`sha256:84d8c84c58513818a74b02e2d5e5f2752309e3bdbe7c883aac81beb5b7600a6a`  
		Last Modified: Wed, 05 Aug 2026 01:30:04 GMT  
		Size: 5.3 MB (5264977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e9d41651bafe05b19e3971c514490d08814a93e55b3c7dd379309612106df6a`  
		Last Modified: Wed, 05 Aug 2026 01:30:04 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:55fc43efd50de1b293ddb5f5a761ac27f42f88af7f34a7a9b426567afcb79c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266320353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb78a897461f20f5ca531cb0ce6458d10c6182735bd68af83f5b64da9737e132`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:48:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:48:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:52:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:52:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:52:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:52:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:52:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58428bf81c6bbac943fd99b4ba60c260cdb2e11d88fa9f2435c3931236de029`  
		Last Modified: Wed, 05 Aug 2026 07:51:44 GMT  
		Size: 158.3 MB (158343254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941323a0060f9ac199cc8b3d405a453e2352f60c57a28fc1e0fde5575f22ea7`  
		Last Modified: Wed, 05 Aug 2026 07:53:13 GMT  
		Size: 74.4 MB (74374715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf04bb7036ed03e4091c7b825f11c3c2442fc0b00bbb1107bde1081932c3f77a`  
		Last Modified: Wed, 05 Aug 2026 07:53:11 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd802df478a2b37305773745d26cf152f221babebb31e9b19d2ac236e538033`  
		Last Modified: Wed, 05 Aug 2026 07:53:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b836ecea24861fdea2de15eac2e71b61ded09ece6ab319538c016d239fedfa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea46d5b1aca8294e947325301d7e12b6e1c676c194f9ed7fb1cd45b03fecdc4a`

```dockerfile
```

-	Layers:
	-	`sha256:59a02ebebf7fd02ed66e4d195ad98c9820c13cda8b1cef02c7640a499843baf3`  
		Last Modified: Wed, 05 Aug 2026 07:53:11 GMT  
		Size: 5.3 MB (5263587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf115f5cc82bc0bdd5d432afad2e62e2eac3a992c700746240fd6cc6eecf93fc`  
		Last Modified: Wed, 05 Aug 2026 07:53:11 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:9fb34747e658813df1f952e30968be8f7e4dc28afee92a67d27ccaf2d8a207a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247181518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469ab0198b1e3210e88760796eb651ef17e9d24db70f71632ee14abd838b9474`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:48:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:48:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:48:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:48:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:48:16 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:49:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:49:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:49:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:49:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:49:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f67c9a92563e62835f69defd41b87b33592f1d7f9f1a9220ab7ce60e8a6baba`  
		Last Modified: Wed, 05 Aug 2026 01:49:44 GMT  
		Size: 147.4 MB (147388337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4593d42aeacfa9970b63de259c4e5245fa57112888ae6c747b8392c3fe0c491`  
		Last Modified: Wed, 05 Aug 2026 01:49:45 GMT  
		Size: 69.9 MB (69945569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c1cee360e0bacbbb575802391792d3f6d372fe97c08bd0adaff2f6154de766`  
		Last Modified: Wed, 05 Aug 2026 01:49:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba807a6a7d64997733a37868a3d97d6d5ae2ddf50ce206ea1463c3e0d4dd6b7`  
		Last Modified: Wed, 05 Aug 2026 01:49:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3295791629ec5abe505da344b6fc72b025247442739c94664cd20be48eebf09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6d6d1fcff70809a65aa0f309782a1f3f11e7de0af2f7e79243c8bbdec7fe10`

```dockerfile
```

-	Layers:
	-	`sha256:7e705c03d63a624f622574619532e2257a8d51c5c5b428f73786cacc7728b147`  
		Last Modified: Wed, 05 Aug 2026 01:49:43 GMT  
		Size: 5.3 MB (5255140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517f5992f43f2537c87cb682a9d7015d0e995f85ed04890d97e47390a4ebb841`  
		Last Modified: Wed, 05 Aug 2026 01:49:42 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json
