## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:874fd166c94631b621b0e97b127da3f8316e2366ac4cd80e57a38c60c59dffbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f1fbd45b656fcb7dd78d63fa5a2e9b909348b48177d8848a4bad22c3b9201748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181714460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec70632847a912c949af38db89206036627b5344107e2b5c264277f5425744aa`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:09:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:09:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:09:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:09:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:09:10 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:09:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:09:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:09:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb76e203e238d7db7785aa1379d2b0de7b669fa92e120f3910dd09fa62dbb8e`  
		Last Modified: Wed, 28 Oct 2026 02:09:43 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a955de2bb0861f07d1ddda282f4aa73a53fd7ed3b2a1bee19fead2f01407b4`  
		Last Modified: Wed, 28 Oct 2026 02:09:43 GMT  
		Size: 78.0 MB (77997009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590b8894930111f12c344dc4bc487dfc5721743e5f46cdc65d4d6ae6d715e035`  
		Last Modified: Wed, 28 Oct 2026 02:09:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:93e428e53b03bbfadb83a18b5d5dd329ceff3a220ba75b5c3dc78ab8388b64eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e989ea992e44ad941154b0065f33aa335ea0bf5ef115ee1e30863fa18325b3e7`

```dockerfile
```

-	Layers:
	-	`sha256:d3cf63dcdd3d40235f6fa5dcb7cad2e35b66c2e5a1a59ca54d39c705e76bdacf`  
		Last Modified: Wed, 28 Oct 2026 02:09:41 GMT  
		Size: 7.5 MB (7498923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1330ba71fc3785322771cb1828adc02712223cd0c1336fe86c98fb87ea1ebec6`  
		Last Modified: Wed, 28 Oct 2026 02:09:40 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:53fe1ea4fd18cd647a92b1da5062a63afb436e4882a0cb4feb2b326c82206192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180652978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261a0ffd804379e6bf128e4f164b758cbb416d094f1b53e105f77b7c54796b5b`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:11 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3678e679ada6f7a4aacbc16f804b27f71a9fb2915c66ef608161bdaf263d42`  
		Last Modified: Wed, 28 Oct 2026 02:16:52 GMT  
		Size: 54.3 MB (54254291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b854d6c73a2124822fb9de8a7d7dce076a68839d88b3f3d1af943683d21687e9`  
		Last Modified: Wed, 28 Oct 2026 02:16:52 GMT  
		Size: 78.0 MB (77992871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2eeeedb8509cfe021ce5b2187d35a9f242528dafcba8e77f735720ddc2e8bc6`  
		Last Modified: Wed, 28 Oct 2026 02:16:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7e7bef8ec1e24f9bae85498d96e24065b1d2850b91761605bbedaeb3f265f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c0dfbf807c9a3407fe912676ef2231895f6e698cb42c6ceb424164a86631ab`

```dockerfile
```

-	Layers:
	-	`sha256:1245a0caa9ecba7f19e24ca08ce59a73ee63aebc1af430847cfab48b30a6ae02`  
		Last Modified: Wed, 28 Oct 2026 02:16:50 GMT  
		Size: 7.5 MB (7505386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1126d3db97620721ec61f0a717c0c86bd99147afc9a3a662283f43bb5691775`  
		Last Modified: Wed, 28 Oct 2026 02:16:49 GMT  
		Size: 14.5 KB (14465 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0e39f07404e531a195c8fa31b8cd04199677105d27c6befdcdba2237d4e415a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188857420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c8b381e3d30b79111acb8a9a00a5414e47608795d3298889740b9eb070766e`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:27:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:27:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:27:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:27:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:27:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:28:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:28:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:28:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00a4cc950f1fbda00e596131a587d13d54493f0a7480caad9c4675922441c2b`  
		Last Modified: Wed, 28 Oct 2026 09:29:11 GMT  
		Size: 52.7 MB (52667127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61689a6ceebf7eb15e99a2214730af44ece89a1bb3e8dbf1ec73d15914d822a0`  
		Last Modified: Wed, 28 Oct 2026 09:29:12 GMT  
		Size: 83.8 MB (83823337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd841268851b9055135583899cffaae77d912af7d4f78e590d8000b189992c11`  
		Last Modified: Wed, 28 Oct 2026 09:29:09 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a1f1a968d613c1b74e01c4a54b67c8c3c3f26d9e2705763efb579eb087ec0393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411516f1667977e633a2cb7bbe45736e1089649319a6921ddd850015b2a323ad`

```dockerfile
```

-	Layers:
	-	`sha256:d34d3114e75849337872a6a7287d56d5b2cc30c5a250fded47d63ee512e520bc`  
		Last Modified: Wed, 28 Oct 2026 09:29:09 GMT  
		Size: 7.5 MB (7504730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e72999792ad993fde5d7c0af226b4bb7d7fdf4346a3df975f85c80912ea0e05a`  
		Last Modified: Wed, 28 Oct 2026 09:29:08 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
