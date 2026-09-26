## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:346289c406d5074020d96a49894101d1b9702aabf682edcac10f4e458fb6c350
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:18f59de848eb14c88691a6a8aa3b8b64e9d5ee6d3356f24829e214c7fc177902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272510224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e15b895c950a70730932be949351b3eb58c78c733aed060fe8239646172c3bc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:21:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:21:27 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2f47a4d90890e80299fd79faa1a5c69b922459f8beecce2b5c7a4c9a357703`  
		Last Modified: Fri, 25 Sep 2026 23:22:01 GMT  
		Size: 145.8 MB (145824874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e41dc641c663186eb2837a4853c82da49123171de77375afea5f2dad4b3ce2`  
		Last Modified: Fri, 25 Sep 2026 23:22:00 GMT  
		Size: 78.2 MB (78180867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef93fc65d7963ad679d2c7eaa7c48cc0c279b52e320c9269ba929f3c66924712`  
		Last Modified: Fri, 25 Sep 2026 23:21:57 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc0c0418112daa96492043d625b43bc9fcf7c9598260e5e4cfc4102ac7005f7`  
		Last Modified: Fri, 25 Sep 2026 23:21:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:09e5a32e6d08e1ce94dd6fcc77e221f6421ffc021a56d01a4fc06e86ac64e1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e44c7025c5dc04bad542404540cda73aca1ca2a1dc953aa268b43f74bcbd455`

```dockerfile
```

-	Layers:
	-	`sha256:130e3742000bdf81c714c71a02002bcfc08754b54e1442f7f2788a863eacce52`  
		Last Modified: Fri, 25 Sep 2026 23:21:57 GMT  
		Size: 7.4 MB (7380640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88c9323cbd368352440b824395174444f421c1a66f541a24d892a70b099e84b5`  
		Last Modified: Fri, 25 Sep 2026 23:21:57 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:17392979eefdf2ad28df04a59e3b74ab8b779bb8b49b393c5b4266e2dff3b6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271211727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6aefbde6a225f80e156d9317c48e9203b8b57d9a13441e250c8f5f7296ae615`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:50 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:19:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666f3a6032b1efdda69d94e6b99856d1bce11978e1135efea36a644f5dbdd91e`  
		Last Modified: Fri, 25 Sep 2026 23:19:29 GMT  
		Size: 144.6 MB (144648252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e98ed112667e9ed8549a6653803fd164d18eb338868734f1a355c0c9a086bb5`  
		Last Modified: Fri, 25 Sep 2026 23:19:28 GMT  
		Size: 78.2 MB (78172524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7703f0d6530e45a6e7767b2c01565a07f1a2aebd0dae26daf9d0e21eb6816a1`  
		Last Modified: Fri, 25 Sep 2026 23:19:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7324eebd299fd723465fe2b37a0190f09983e6bba1f1bac0a6a30d72b076d4d3`  
		Last Modified: Fri, 25 Sep 2026 23:19:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae10235614fee1dae2d9e4beacdb9b13b574e0e81921a585099e5e0383f756c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c289611da43b60899ba99ae5071deddffa760c5632fa23ce3b3d6eb4135add`

```dockerfile
```

-	Layers:
	-	`sha256:8728db242e0748a41e8c9ce47a8ec14aca7cc6af9020793dc74f21fabd508bc6`  
		Last Modified: Fri, 25 Sep 2026 23:19:25 GMT  
		Size: 7.4 MB (7386403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d25cf5df86f98cab29f2468c96648bcca36a7ba9a699579d370bf27889b6983a`  
		Last Modified: Fri, 25 Sep 2026 23:19:24 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:38c0b3a60b5c7ffda4c35bf9d2a21c569d2240eea71780591786d931c4f564c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282013355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8a51be98e4a54ebed2b276b6f3515f8fbb2a9513d2ebad988b8cd0829fd7b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:23:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:23:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:23:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:23:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:23:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:43:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:43:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:43:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:43:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:43:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0a3417a86da6db5f153e9976a10bc4a3fbb991587e3a3d32e8db92b65d84b5`  
		Last Modified: Sat, 26 Sep 2026 04:26:58 GMT  
		Size: 145.7 MB (145670552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0843bcaa46e0f0ecf03703289c96e437f51c66c23ee059daf1fb5bfd1e68a7ae`  
		Last Modified: Sat, 26 Sep 2026 04:43:48 GMT  
		Size: 84.0 MB (83992455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df234253924e48ba23ccc1f1696d03f19613d2ee562a45e9043819a63aae210`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473b769abafe6624c63a45b756cc463b435d7114a414abc243c9d61dc47cc9ab`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0b37c1273977e71266d62f8c547771421be370df55f9ad2673bd1fe5ab21b79a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61c1a2bb6ac11649c59cd68e6a98f81ac75dbda7bacfdd9d6a4cd9c757baecf`

```dockerfile
```

-	Layers:
	-	`sha256:9891536fec92923e3effce5bc7b56e130a8a89ccddc2385a6418822e05c089ef`  
		Last Modified: Sat, 26 Sep 2026 04:43:46 GMT  
		Size: 7.4 MB (7385854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eab02f584c8850f6b098a7b361e3a93f7c624f81fd5f69583261b8e812adb8c`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
