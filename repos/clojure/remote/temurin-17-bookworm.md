## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:69c4111ede076f4cf55ae939ecb67f3eb51995866bc456894c6bc02b6ad0348a
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
$ docker pull clojure@sha256:48c7fb3e37b1fde97116a35a02a099a2b3d097ab83b1b6cd0d60bf3b2b3e555e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272349003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be42798cf268ee600eaed602c6362993cfce1db6e1963fdb94a80b7d64c2f7e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:18:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:18:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:18:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:18:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:18:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:18:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:18:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e1be3bd4332f5d73555ac2b59530849b3481aa77ad6680cf8259e7c8bf5a68`  
		Last Modified: Wed, 21 Oct 2026 01:18:40 GMT  
		Size: 145.8 MB (145825482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30baad2d32d35aff966c1f99d12f63025c73ea2af6cf8be8b9377a78e31badc3`  
		Last Modified: Wed, 21 Oct 2026 01:18:38 GMT  
		Size: 78.0 MB (78000395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400d0a2322d93101b21ff4245d8f369afe85bedd6c78ddffd3bf3a463787d849`  
		Last Modified: Wed, 21 Oct 2026 01:18:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84c1aff90d9f443bd217b741b8a4d0eb45517cde26d22413346066b673db9ac`  
		Last Modified: Wed, 21 Oct 2026 01:18:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a66dc0a7e619cd3c21f240495d186a2e726277f8658ab786f1c2c3cc3b230f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb85b3e619cd3bf9113fc32a0791bcd1f3dd26bba45f76e8b3522d2cec44472d`

```dockerfile
```

-	Layers:
	-	`sha256:b5d5c002f02405ed3e37501aa938be7e08ada823df46f418fe5aa4f4d6315e4b`  
		Last Modified: Wed, 21 Oct 2026 01:18:35 GMT  
		Size: 7.4 MB (7379345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:132d944e914609340e40af1a58ff5e3538756aa6ad18f95c68536e1e63e9b089`  
		Last Modified: Wed, 21 Oct 2026 01:18:35 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:15fc8053ebda0e4b18d624d0463f63916986af6e03411340a0eb0a8da80d9adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271036446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fcfab3ac8a434f1ab82337ebf52276fa3a4fdbb726fd20ff21d26c805a1ecfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:24:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:24:15 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:24:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:24:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647c38d7d38c36095a80647404f5c7006bfc98efe0c31486cc9d663f6fd49e31`  
		Last Modified: Wed, 21 Oct 2026 01:24:53 GMT  
		Size: 144.6 MB (144648236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585f13bb1c51465e6317e5e3d011daef6d79d7157d6faad4c7be5048e87a824e`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 78.0 MB (77984055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e689cb5e415b5b475c82c744118ccd91719b24197a81083b2bd3ec3fb731725f`  
		Last Modified: Wed, 21 Oct 2026 01:24:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae93fe95492e53d420f92b974d2f6865fb63c58e0676603d94b10519bee7befd`  
		Last Modified: Wed, 21 Oct 2026 01:24:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:615dcfad1addf72163b78a0c35b995aad7bf610878325823f7ff90d526c77df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a79522d6860fc8cfc0e77f9b101f5f54c2d04f5d0e403f08a1c456f9970574d`

```dockerfile
```

-	Layers:
	-	`sha256:a45c508ae9b9f96d60df36a62f8b24ccbac680f2e3c13fd9e133ef50c2ebab79`  
		Last Modified: Wed, 21 Oct 2026 01:24:49 GMT  
		Size: 7.4 MB (7385108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9668a9f4c151bb3bfe343491e2dea1b7355d803b5bfbde00e0d13d0ea88f9ce9`  
		Last Modified: Wed, 21 Oct 2026 01:24:48 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60cf2ffe20a8591026d35c5c73aec7a6f95fd4599d52a5ddd2d9761434458cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281873919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87eee61b8ad63cd8d3e4c81367198b2915a2f86218ed3dce324fb6031b9cfeb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:29:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b946d03f1d850b7c8f4284e40d68b9a1a5a4dcde3901c65c871cf7771ee97819`  
		Last Modified: Wed, 21 Oct 2026 10:30:11 GMT  
		Size: 83.8 MB (83836626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ff8d4be0353a80ae881d911c4c2f5a118df70613b85627440bdf0f9c278ede`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca518a66c04e1f2bbbfe81b2197de8d8f392c71702bceb5fbc6d7b2b7f1a9e9`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5dd2b4446c14eaae431d67060074fae96b4057f26c772f6be26dd62fee268ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a5d7156b808b21265968c522883dfd39b41f7c3423b6b7dc7ccd5bd099b9c0`

```dockerfile
```

-	Layers:
	-	`sha256:c467f2354d882b77e21063f94cec78f6411b3fe070ace00bb08eb651354dd8e0`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 7.4 MB (7384559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:818f0212b5ecf8156922cfdf1715bec4be09104d7ae952c2b6fb27c4ca630d49`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
