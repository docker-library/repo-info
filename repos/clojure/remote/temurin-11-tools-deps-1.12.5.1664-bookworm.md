## `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:d694e954d97ab49285a90276949809fa3da7acbea0ad73fd721be8cd316e1def
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:13e489fc25c1633934d90a28b640f4f1159d0784d243b296453c3ffa3f5c1cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3436e2bcd7497a5a6f439d7957a889962b5f3dc5e719fb26585679e6a4b8fce`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:26:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:26:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:26:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:26:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:26:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:26:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6557b3a3e2e5933c67db2776a961cdda3bdfd0a72b7e97fc85a6a4ffd5a552ab`  
		Last Modified: Tue, 25 Aug 2026 01:27:03 GMT  
		Size: 145.9 MB (145861335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdfb0228022c92dc0c6196f9d7634056874658d067cdfecb92b754687992f19`  
		Last Modified: Tue, 25 Aug 2026 01:27:01 GMT  
		Size: 78.2 MB (78163415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b345ce6e9aa18b1e2feb7075cae0383d64e9589f80c908ea3f43aa1deec33cd4`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cc0eb9caa4cbe2a47787f42e1d3fe66e14043db4b5017b4f694d0466c169ddb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f5444bbc48e1b448c85aaa6b99e8ac17f5d22c2a6936f57d717e8d3dc79853`

```dockerfile
```

-	Layers:
	-	`sha256:1fee5a0934a0616a6ef35655f3690873f8694f8826268943f656129769faae48`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 7.4 MB (7400887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e597a9dc4458eb8e478c0f929eb0528daaef3a10a392f7c446d0bb0b9a556c6`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:14b28785033036349ad902cb386dd60529c812fe7015427f4abc839c1070d9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269097256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4740f83699776cc140ade4665658552678929f7914d46a559d6c9cfa4f509fc8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:30:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:30:46 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47109cb5c2e56409952fbab25b71feb78dd843d5e2e4ee9b268c9e5ee33153c`  
		Last Modified: Tue, 25 Aug 2026 01:31:25 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8640f2dd596668393cb55385d88915d1cbee003dda3f86f15f8dfb0cbcc86cc3`  
		Last Modified: Tue, 25 Aug 2026 01:31:24 GMT  
		Size: 78.1 MB (78146366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeedee14d37c847d3143e72f3a1501a263b18a9c9cdea420bffd4354455d654`  
		Last Modified: Tue, 25 Aug 2026 01:31:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c21a7848bb96d442deaa978a8d945808044bcd0029b16635dfbaa76b1c3ec3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1c48f4bc962f45ee7790c4f8046a5a33c8f09d707e9c29f14e55cd6dd7e43`

```dockerfile
```

-	Layers:
	-	`sha256:15b75f9d781bd237717723313b95a9dbb8e035c189039ecebd094b5e2634844a`  
		Last Modified: Tue, 25 Aug 2026 01:31:22 GMT  
		Size: 7.4 MB (7407268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92fa1e3267cdf2adc70f2ca9008a23878de00039dbb43f144f647fcbdddc0380`  
		Last Modified: Tue, 25 Aug 2026 01:31:21 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca465722832532a1d70f700df9f530f3f855bf09f1c0cc665dcd0453e32be23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269410085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934dd3a2fa6cd98c5dbdc309455043119941e04ef3980fa767dea606ead54234`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 21:29:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:29:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:29:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:29:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:29:35 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:42:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:42:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:42:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282c674e47b3863a0e354f08ab41f6f080883b5d951c2f4d2e649045fd80faf2`  
		Last Modified: Fri, 21 Aug 2026 21:33:15 GMT  
		Size: 133.1 MB (133089928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2bc976b1beb9fa7017cb9574aec16db1ebc1aeb7b6d1deda25990c17acdde2`  
		Last Modified: Fri, 21 Aug 2026 21:43:14 GMT  
		Size: 84.0 MB (83978039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210840f16653e01cf2d3e9fb2b5a1d6d92873ab2230d5016b1bc349ab020befd`  
		Last Modified: Fri, 21 Aug 2026 21:43:12 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a1638b2952cd93246aba42ad1456b0d9e8d6b98cc2323687f9f6f6611f68c218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94ae64df446ac3f4d6f3ac04360647356b9a701a491d7040b49fbd9898ba457`

```dockerfile
```

-	Layers:
	-	`sha256:035bd4b60819a3266cbe04931d54f1201e40cc104ea7b6cd3dee82da32057d4e`  
		Last Modified: Fri, 21 Aug 2026 21:43:12 GMT  
		Size: 7.4 MB (7405488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:469876e6bf881c3bb2068d7b770e140fa54ef5ed4fd9223510b94dfe6403efed`  
		Last Modified: Fri, 21 Aug 2026 21:43:12 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:4248e133e81faf5dd1520a0ffbc1a28116e3687f9f5587d8a2b5ca4cb7107cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250746753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87af54917799532ff71d7325d247f7997a571fa11f51f1f156d825c46086cba6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e8ab673b3e926ea338a092a3731e2e2335eb2073c4222b400c50e0e33bc9fd`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c03c969ca1c89c3a86920198986d0e5b8c7c69863b7fe149f5c216aa47f7f`  
		Last Modified: Tue, 04 Aug 2026 02:50:56 GMT  
		Size: 76.9 MB (76936415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd61632dd00f52120bce035d2760c92317babaec125f405dcdd0d863b776396`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae67e43a87d712349ed2d61f304e34d05823c3a7a4012e47646b898439a174a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8abbefc237043673897ac02227d8c04b6ae7fa8a331afa21f894e890290945`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fb3bf2947fb78d920a2308f7cf7b5800ecf221a622b953bae41e6e8046c2f`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d0f1b14748d277f1b6fa30c311c115cc9c6cd8949b844b8c4a585da78526a5`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
