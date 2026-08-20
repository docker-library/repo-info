## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:4824ebffc153cdabf4f65b9fddc968ce22e1a95d8e3e9b0ea093dae7513fbd3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:5c472a93286b0dc92bdb634f80c6562200e257be3a85a68386763644c81ba37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181859620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39db8a3fba88b6a8b26507693b4aef15d6d9ca8dcc41fa033edf5b4049deef03`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:40:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:04 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e08bea929c5eed55387b05346e3eb1b4026e9fcafe75d7998cd47426d97998`  
		Last Modified: Tue, 18 Aug 2026 20:40:36 GMT  
		Size: 55.2 MB (55198722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37314086aa7a317a9718f78ce4dcf98a4a35d03258f7e22a5b1cb3b71c8c235`  
		Last Modified: Tue, 18 Aug 2026 20:40:37 GMT  
		Size: 78.2 MB (78163163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d8187b2114718245cc2a3eb28043aedfdd9ebc147b04708e87c0088bcfd3e8`  
		Last Modified: Tue, 18 Aug 2026 20:40:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a6f7a42759a6a485696efd19d0ebe2191daff6a47b8bed461efd976356e48c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf94d09caecb300a16a761c2c96e8dcb4f3e51bd908b45af436774c58d03a852`

```dockerfile
```

-	Layers:
	-	`sha256:d0ac41cb18aeae26f296c127591217556ff75b2ef2d3bef02be9c72ed51d79cd`  
		Last Modified: Tue, 18 Aug 2026 20:40:34 GMT  
		Size: 7.5 MB (7501733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:524df1f375a4c9f08157b37605336d7f9dd0cf1725d735df7d4c6cd1a67abd4e`  
		Last Modified: Tue, 18 Aug 2026 20:40:34 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff6c5db79ccf439548722ece3ba6ef03aa6150385b50509b8f87daef25554681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180803023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79ec94a3d9faa0840046105f590fec844327b948090d1a0ef10ee9da250c6a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:40:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61763ba29d3f419d93e76e06d931aa6b1389dcdd0fd2b0f8499dc70fffb974ac`  
		Last Modified: Tue, 18 Aug 2026 20:40:39 GMT  
		Size: 54.3 MB (54272921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d401829753024cf3e7c168f65c92dedf4a7adb7478737e27cdf9bbcf87398cf7`  
		Last Modified: Tue, 18 Aug 2026 20:40:40 GMT  
		Size: 78.1 MB (78146077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cca9133151e8fa9d4af29790df2d70006dea09c8c360d055e032f3cea5f32c0`  
		Last Modified: Tue, 18 Aug 2026 20:40:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b85924063d4bac8c25e16fff0cf0601cc2ffd49aed82a7941ff2858fdeca86c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7522661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e65b788eb23867c660f1bb98a94ff93523aa0cc98d63f97267d58f2c646194`

```dockerfile
```

-	Layers:
	-	`sha256:5f0b922992acc24c9afa8539e501a228a5418f190883ef6a87b8156fcacefc40`  
		Last Modified: Tue, 18 Aug 2026 20:40:37 GMT  
		Size: 7.5 MB (7508196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d9b4319e799794d8d5714769698664d68b3b528627d1ad031f84ec5343227c`  
		Last Modified: Tue, 18 Aug 2026 20:40:37 GMT  
		Size: 14.5 KB (14465 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:866a787bdff8291b87d1514bf2fa75d8c337729321603a12ca7537ef1c96a014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188991040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82788abdf80aeb9e47b6bc1ecdeecb2a97ef2d1bece8693648940402150b5d26`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:47:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:47:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:47:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efed027194eea968631929a28563edc168ea8329a45d41df9bfa41f8f323009`  
		Last Modified: Thu, 20 Aug 2026 00:48:11 GMT  
		Size: 52.7 MB (52669121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b1faca4438b0fa22e6cec68e01d09a4df0a23ad2cbcc2b5813b435984b195`  
		Last Modified: Thu, 20 Aug 2026 00:48:11 GMT  
		Size: 84.0 MB (83979799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26dc32925e75c3a6183bc883ac6a1bc32375e7e1d16bd2c0da2a16ef04b339b5`  
		Last Modified: Thu, 20 Aug 2026 00:48:08 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f4b49b168be28e63c1a50ee6fe7ee3356d07b1ca0f793ad8732e54600eee3af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d1aa7bddd893ecdb8941f73ad4936d5802502aa7277ef2a346f05cdea1ca0c`

```dockerfile
```

-	Layers:
	-	`sha256:703c787e1c967c157e8e3d74065b106538168d45f38a2eaf76090e50106e6fe6`  
		Last Modified: Thu, 20 Aug 2026 00:48:09 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f19656adf5d9fbdd947aedd5be971917a4f65d0bd8e14bc0c35548270a75f6b`  
		Last Modified: Thu, 20 Aug 2026 00:48:08 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
