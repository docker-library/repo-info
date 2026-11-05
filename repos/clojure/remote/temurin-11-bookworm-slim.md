## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:fbd0307bdf4038aca9c5098d99a67ddef3d7280c465851c5324e28f07075e97d
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
$ docker pull clojure@sha256:e646b687aa469c376aa06368205777c2713e5a9597523f9be368a2e0f7a8998a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240621087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4083f09ebd66fb74897bd368ef3ee9df7c0f1ae66a329a163320713fb98b3965`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:07:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:07:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:07:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:07:04 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:07:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:07:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:07:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efdf144839eb388e75caf7b2d4274abde96e3d248a94d175fc20fda9b0dba45`  
		Last Modified: Thu, 05 Nov 2026 08:08:20 GMT  
		Size: 145.9 MB (145864297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f97cfbb9075843b14e47109cf1d35ae5db4fdf850c4e5863643e0ca35c1fb9f`  
		Last Modified: Thu, 05 Nov 2026 08:08:18 GMT  
		Size: 66.5 MB (66508160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f482093ccc79fe5b4a48edac91a89970d66b91ef70c32cd036f47163f33b95a`  
		Last Modified: Thu, 05 Nov 2026 08:08:14 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b216c44c3c22d54e42797919801d697addd456cd14820f85c3b96e87e2a86ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007b40139f5eef23b4b586e859731bc8a53032c950b7690ac31b8bc64c224fe3`

```dockerfile
```

-	Layers:
	-	`sha256:fad5e91f30a5f7f64ebe1fbf90149bd41a85c1adbdc06034702a83469bbfd3dd`  
		Last Modified: Thu, 05 Nov 2026 08:08:14 GMT  
		Size: 5.1 MB (5137629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bb0fd9c8e6ae63c8f8cdc5aabc3b41c35c7658cb193e8875de894f13a4b5ec7`  
		Last Modified: Thu, 05 Nov 2026 08:08:14 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f8fdd82ab1a3de3347e22824488c90b81f538b7092adfa68731c7636cb146e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237221943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868e973394f09d9b4d07005319bef585d933ef352d81acfa9152195b195b5110`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:43 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:16:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:16:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:16:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15798369c31b785582ad7486f861fadb6302bae416b210a94756b2ae00281de`  
		Last Modified: Thu, 05 Nov 2026 08:17:20 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46ff4bc22012f0d7f1e8409ae7380638a90df7625071d60ecd02ba958dfa6f`  
		Last Modified: Thu, 05 Nov 2026 08:17:19 GMT  
		Size: 66.5 MB (66500345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c811cb44bfc0b15d9e9c919bf1eb6d13eaca48678901cf18bb634fdaa30a18bd`  
		Last Modified: Thu, 05 Nov 2026 08:17:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:358c71da0d5da45854ff2665009df9e4125d9226f28db46bde8d89fe1d8d9480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69aff317b3666fa883a37efecdc19eeab53d2cf346f6ec4dc97439143ebdeaf4`

```dockerfile
```

-	Layers:
	-	`sha256:5b399e0aec827d1cf9e5c52164b0721a0f8ea0e3919c01daf37815f37a121e6c`  
		Last Modified: Thu, 05 Nov 2026 08:17:16 GMT  
		Size: 5.1 MB (5144008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd128d5e8dea08e5e573fd41e4af846ca085aeba8e8a3d013390b416db9f907e`  
		Last Modified: Thu, 05 Nov 2026 08:17:16 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:00e7b47b31ad4c2e601c14d415198f5f58b2ff9f284e7e0376e8d9e910871b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237522161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201087aec1c1a0f9e585b4b516b85b1416da088cb57c86fe648bd01d3017d116`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:35:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:35:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:35:32 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:45:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:45:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:45:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3126ca02f7790503a62de8d81f97b4eafcb894a09cfbf4fb5315b98d3d023d90`  
		Last Modified: Wed, 28 Oct 2026 09:39:37 GMT  
		Size: 133.1 MB (133095020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acde360170f65af671c99222a4ebd7b8f5f19a008fcbe7408ebcea6f81616254`  
		Last Modified: Wed, 28 Oct 2026 09:46:19 GMT  
		Size: 72.3 MB (72333655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c955d0f75d8413288d104ec5aa5d78b4a8d585f597a6832d3202ed8c579e5f0`  
		Last Modified: Wed, 28 Oct 2026 09:46:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:543e17b1bbf6c420197c3531b4f34630371e488cfad8e51b28d392f58747982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5156569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77252a927eba0d5a355bba3a4e7bea9d2284246ca4ac15361d4181233b647f87`

```dockerfile
```

-	Layers:
	-	`sha256:aca4e63a7e58fa7e2b4996df60aaf1ed98f617fa1c29456c54543a55160bf88b`  
		Last Modified: Wed, 28 Oct 2026 09:46:17 GMT  
		Size: 5.1 MB (5142100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbab82e93dfd15124b6ee24e6f63848647b5ef0f967337108fa2bd199bd90ad8`  
		Last Modified: Wed, 28 Oct 2026 09:46:17 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
