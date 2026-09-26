## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:abfe4c7e7729d9dd402b5bf99603b24afd4e03c8907614eaeb00d0c3f0646659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

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

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d7b8d55c79d54dbd3bb2fb1c6e9ceaf8b544b02f6f80b3abdc137d0e5fafbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282014581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f4d96beab66fe1c2d8cbec2ea672c8f8355e19c669547fff643d0cc3ee6f06`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:50:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:50:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:50:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:50:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:50:38 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:59:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:59:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:59:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:59:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:59:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f69fd3fc29be41a5a525ca0c3eb7d63a7aca936ad5899d2128fbdb7e32602b`  
		Last Modified: Sat, 19 Sep 2026 07:54:14 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b960a3d54c46e1aaa5dde9ef239baacd940e07b144f72015fff0c21902659a7d`  
		Last Modified: Sat, 19 Sep 2026 08:00:18 GMT  
		Size: 84.0 MB (83989938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddcead3dd8f4d56c50b8993243c9d47f036b13db53e4df9bf011ea70b26e779`  
		Last Modified: Sat, 19 Sep 2026 08:00:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07160580ac69bc0c96e2bf0dc30b5854d959e75848411cb06470cdf6c1da18c`  
		Last Modified: Sat, 19 Sep 2026 08:00:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bd26c4c0b158f235c3e85a4594ff53ba20b305f8c7ac7204ac42e23d86a07017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e7bbfb55c1d70af9fb045df3349f24b60994fee038e6817e07fd8d1bcf6987`

```dockerfile
```

-	Layers:
	-	`sha256:a0fe5c48a9e5fd72db3ddc2813e8b840fab8660c8c34a6da23964503c12d712d`  
		Last Modified: Sat, 19 Sep 2026 08:00:17 GMT  
		Size: 7.4 MB (7385846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcfef1f4bf16c543792e5dcc38c9403eb161ecef44fb71678cda973389e93adc`  
		Last Modified: Sat, 19 Sep 2026 08:00:15 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
