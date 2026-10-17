## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:613c794a486cdaf4417dd856ed3dc3928f128f405a5be32530ce1c1d71122c56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a2faf0f3326fda4fe2031077d151e6980c29d04abfefec06bec7f2652008eca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242900654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9047b70b0c73ab51df1ecf4e8676c2d7a1ce9dc979a151a7980c963a48323417`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:47:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:14 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc70486703b41f077b208c2ab9416519099b571df81bebbe4b22fb8dc91c597`  
		Last Modified: Sat, 17 Oct 2026 01:47:56 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1f55a9db34ba352378447c12e9f1fac6ce47aaef084eda338f9ce1e9f5296a`  
		Last Modified: Sat, 17 Oct 2026 01:47:54 GMT  
		Size: 68.8 MB (68786169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba7a526c3a32609e6f6ef9d777407e2821c0c4a1d8269b035bacc42b36d6fb5`  
		Last Modified: Sat, 17 Oct 2026 01:47:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9c09b7c7e788972b70428e13ec61be38bdb044f38d5ca79122bacee08adbefa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d1f2bd74ddd792f3e8a7b3a02d4498c7bb778763ea3ff3df04e10cafd51b49`

```dockerfile
```

-	Layers:
	-	`sha256:2f4a8884b0499c3a09778d021a1d071af9e46bbeaba5b19824a8abdfea6c9abe`  
		Last Modified: Sat, 17 Oct 2026 01:47:51 GMT  
		Size: 5.1 MB (5138824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:998b0f8b6496842fe1acc31344446bdcfb8d74be8b570f2a7ac697e79e69f4ec`  
		Last Modified: Sat, 17 Oct 2026 01:47:50 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fe7b6697db39dd2adc33150bda22ff829a931ee7cb31b71664e45952217686ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239460417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d576f0c5359595469eb50c646e468de85e76e73054dafc40430e098a90c75b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:47:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:26 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f257e79c385fe18f5f4dbc4888a86999c88d871d4063170e1040747a4bc2c722`  
		Last Modified: Sat, 17 Oct 2026 01:48:06 GMT  
		Size: 142.6 MB (142576603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e924a70a55cf9577370bfed77c6f2d52e5d7740d975b4166e81d16432c8e4125`  
		Last Modified: Sat, 17 Oct 2026 01:48:04 GMT  
		Size: 68.7 MB (68745992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e16538771c1b59052a568a8cf7f1eeedf67125f612a47194393fbce45443022`  
		Last Modified: Sat, 17 Oct 2026 01:48:01 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b33e7fb416c6ae376b808fdc82798bc8167e5b925a918c4081e2fa58ea68484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6118b407db95af18474c486c85d9647e0cf9d073f354aa1fb70d9f39906510b9`

```dockerfile
```

-	Layers:
	-	`sha256:7cf7c594490bee25dc36d5ec6776007b637858aa409a7fc59c965d2c88f9a6ce`  
		Last Modified: Sat, 17 Oct 2026 01:48:02 GMT  
		Size: 5.1 MB (5145203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27af1499c44caa7a52bb363b721a415eb16c8f632f39a31736228b2d288e62ac`  
		Last Modified: Sat, 17 Oct 2026 01:48:01 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aabc1bf1156a5261ff3e5eb98546dfd61907be5298aa819b139495b4fe681fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a5bd478f1a82bde26298c3a94a64f98e6bfd20ef863a832e104c7b0dbc9d2e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:47:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:47:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:47:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:47:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:47:26 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:58:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:58:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:58:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd1244a3ae8c40ba613f2d1ad1c4595497287e0e37271624575483df456400`  
		Last Modified: Tue, 06 Oct 2026 09:51:42 GMT  
		Size: 133.1 MB (133094694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8822e61f7b57c8b42033450ad13b3050196b035e106a49d35dc968dac9191a4c`  
		Last Modified: Tue, 06 Oct 2026 09:59:09 GMT  
		Size: 74.8 MB (74766728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8764f0a435c6006d1b95e17c3734976f7b52f0f32aa2e83bf0bdd148b5481e`  
		Last Modified: Tue, 06 Oct 2026 09:59:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a651b08c38694eb2c84970d9ec9a0211e83c19424c441e44768a5ca46fba6190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b468b19e6ef21e92858de8c6148ac3e78c5f2e35e45687af9c37e9f3d962ff5`

```dockerfile
```

-	Layers:
	-	`sha256:37686d0216d28cc1e0a4571bdc4c290fbd3d00877ef9699cb07e94345f7ff46f`  
		Last Modified: Tue, 06 Oct 2026 09:59:08 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eadc95ecc590989a76b00b36893555accc94204c9ed3a749f97f18e90b8df338`  
		Last Modified: Tue, 06 Oct 2026 09:59:07 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json
