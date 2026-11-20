## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:7c1bafbfeef63b5c496a4f1bbfcc30e902445632d3f0f1828240158b3a435870
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e9ec6ada1d1a6045d6182d52ec9800e144366faf7915f3e37984024f36b3bf7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154054588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c94ec56e5691a959d738d64e8c85d61f9a94ab79984d452a04ad7120a0b06d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:06:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:53 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:53 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96dd2caf9afa8c5042cae619c3a602a88bc8d99ad042b9794567da9edc8c2696`  
		Last Modified: Thu, 19 Nov 2026 22:07:26 GMT  
		Size: 55.2 MB (55207909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8059c24ed95ae77fa3a6623074f556920f9cb73b7b79fc14c12640f6bbb883`  
		Last Modified: Thu, 19 Nov 2026 22:07:27 GMT  
		Size: 69.0 MB (68989898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ef6f066f5cc3556876fd5624a11d9515c35243b6f8b52d957b862cfe23c6ad`  
		Last Modified: Thu, 19 Nov 2026 22:07:24 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17bfd4a3311c1a8541c3d48527d979e836e173d533dbabf7dfee61c4d519e19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904ce06323693283a44dca2d1edd7790746085b497232ed0bf866fd20d924508`

```dockerfile
```

-	Layers:
	-	`sha256:68234a9f575869a713b7ac6bd4031a917ee6d654e76d33796f0085a615776b3f`  
		Last Modified: Thu, 19 Nov 2026 22:07:24 GMT  
		Size: 5.4 MB (5382421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:559f51f24a6792b6dbecafe8ed076ba52e82642154021a1fe709306fa2b92e58`  
		Last Modified: Thu, 19 Nov 2026 22:07:24 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3953337c69d47321abb81e0940c79d323cadbbb74b07ecbc7cd635554a1e6c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153290634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70868acf7eefa4581a788dc0d31ebcf3e10317a12a6a874193260d98f335e202`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:05:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:05:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:05:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:05:18 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:05:18 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:05:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:05:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:05:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc25c1ffc696397c62fd60a68198296beb983db05450843ac5d83eedc3cfb9d8`  
		Last Modified: Thu, 19 Nov 2026 22:05:52 GMT  
		Size: 54.3 MB (54270349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f78cd4d59efe6f214b368756195be656ee7a54a5b32adef42d2257588de119`  
		Last Modified: Thu, 19 Nov 2026 22:05:52 GMT  
		Size: 68.8 MB (68805602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7ac0259347f2de8e961b65c4ef74f5118e5f01e1629d1a75607286f3f917b7`  
		Last Modified: Thu, 19 Nov 2026 22:05:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25f8f8c8cf05b87c6ad46093b443ed99cd9973ab3b7fa94bce1de4f80f6e0e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2a99cfba5e65e55f1b4963e087c99c5e27e2ce3a03d7a21f600ebe2c0cb24d`

```dockerfile
```

-	Layers:
	-	`sha256:8c4bb33813676bfe8aa20d13fb703354b25ffc5dddc7d7d01714488727b0221d`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 5.4 MB (5388882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4333be2d19a21160ef0497cd79efe382b2161408a234a3739afe766e4de931ee`  
		Last Modified: Thu, 19 Nov 2026 22:05:49 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:30dd212a13f7cb48ab00ab76912accc36dfb8f97edbe8670e65096695da9f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160776193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06721a67eeefc8066af239c92752f801558bd75010df597b3da1aae16e685894`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:14:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:14:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:14:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:14:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:14:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:15:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a678a29c3391f1fe465bf4edbc3af04ab3026e2582e9c3650840c938aab8f6`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 52.7 MB (52689141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76244afe1b5a9b43fbe0e82edf48e384c99e91bb2f21acd89099048cc6b7ff50`  
		Last Modified: Tue, 10 Nov 2026 00:16:18 GMT  
		Size: 74.4 MB (74418759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007d25c090a2ecc6741026cac6d1ae66caf4500cd0bfb808e1d8d8f0305b70d9`  
		Last Modified: Tue, 10 Nov 2026 00:16:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8dc1c7bb4c6c5229ad644ab820800bea3123dc39cf4dc2bb545f420d54931ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ed1a34c79df0c6afb0ece5f340ae0e42260afe2ced16be7e3648af2d7d2859`

```dockerfile
```

-	Layers:
	-	`sha256:d7447fe2f8d10b9d8777879626f871ad58ffbd8bf01901810c983fa7597f9af8`  
		Last Modified: Mon, 16 Nov 2026 20:57:25 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e1302bb1c3a4998b974e37c7cad529b382287d392aab3108c963621a9bc2223`  
		Last Modified: Mon, 16 Nov 2026 20:57:24 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
