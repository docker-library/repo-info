## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:d8a8e115532fe61ec58b00a360f003ee9c07753bb79439da2fd45a8f86f23731
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f4c8deaef59392fb8f15676b128d1177b4c4705b58e3c8e4537333100670c3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284789312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cb46be2482ff498a2b68ef2f2efa51a9350e3aaffeb7a246a9dd908b185712`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:02:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:45 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b89c410334e0dc4efde4916b464891a99b06ff086fccb11b40106bf7fdf563`  
		Last Modified: Fri, 04 Sep 2026 00:03:23 GMT  
		Size: 158.1 MB (158120303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19135b5cbce02c2766a8fbea4302047623c46dfcd5a5f182fba404d0fb11e69`  
		Last Modified: Fri, 04 Sep 2026 00:03:21 GMT  
		Size: 78.2 MB (78170605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8707d17502349ee326a81453494dbb44e29db5d3ad9225ee5f4d8cbef69123`  
		Last Modified: Fri, 04 Sep 2026 00:03:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d16fb5010ea318bc0e33f1db5950cc17f1e88bebd57cadce8b9652b4878a41`  
		Last Modified: Fri, 04 Sep 2026 00:03:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9839a3b1fbf6e3756197bb5ba647a88331e4ba920aacccaeb260d9e9e42b58b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0347ac26f297e64f82b142673e5ae6fd2b6e2e5210dae37655eea9cd6eef8a9f`

```dockerfile
```

-	Layers:
	-	`sha256:79cbbfcddb6a0a0eb1d5fe0c0da55e8bcc4beccdcc48605488615f1b99999ea9`  
		Last Modified: Fri, 04 Sep 2026 00:03:19 GMT  
		Size: 7.4 MB (7383907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b92a0876ee90edac55fc205705ad478563353ef75119ce0ebedf8963a99c4450`  
		Last Modified: Fri, 04 Sep 2026 00:03:18 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1deda2766e490e41a575ad2b13a2fff1260a6d72fecc6cb1a993b8dbb84b36e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282956894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf6b28725d29b7d005641ccdade2e438da5181c13303ec5c14b7b5bc798be46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:07:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:07 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde762c2f9c79692cd8dc244884c2ec490aa3c4155463b3c93c670d831738b4a`  
		Last Modified: Fri, 04 Sep 2026 00:07:47 GMT  
		Size: 156.4 MB (156401949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c14b8c43f3836f167048e32d8f712d563f85d69c3386c3a20af89ce5702791`  
		Last Modified: Fri, 04 Sep 2026 00:07:45 GMT  
		Size: 78.2 MB (78170256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe46a2aa2ac1769bb357b00846b8dc41097e70ffab67bbb8a981fa2e2112e002`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1176c3d473ea7666d7c3d6b7eafda7dd4cd05898332135d2e020cde8828ce02`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:95b6e946b88b49eac4830d4d3e6edd453cf0448c332654a4566d660f82b8e9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7406452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5cc58185f8653032c8dbb2b4f2ff5c0235d82cba2fb8b4d4effb879d834dbd`

```dockerfile
```

-	Layers:
	-	`sha256:ecdb244c40a373739637c6822c0146df0297818b6c6ffc677654de3f622a7ced`  
		Last Modified: Fri, 04 Sep 2026 00:07:43 GMT  
		Size: 7.4 MB (7389694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71d3325748cf1d30ef5d0a8dcb89b400c8873e1dd0b031836df1125e43ed4153`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:201b0da4576c9bd5da1eb72ff7bb32a476d4cf3758e2522f90bfd11aaa67584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294602172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ac865ba6c906d1f2cda740e6d121cf1d525cb0c41e119692e228ccd6921560`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358d5f980f82ae9f282fe63b05e44bb3911ae80de7068776c4adc41a44c8cd8e`  
		Last Modified: Fri, 04 Sep 2026 00:22:06 GMT  
		Size: 84.0 MB (83984475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff6153082618afc42c30a107406185736f2a7ca0f190ff95bb3541f5c5767c`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e550ff7b88b0a585ca5d1b86d9b5cf7cecb422228e583e700c06e292dbfd91e`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2571f2160e6ddd7fc6cf25e111bd68703dca842d84e0ee2a88279d3d87a14fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e76925bd94de2580eefcfdd5ffdefe47e1464264140ee2eeeb26dd524402f0c`

```dockerfile
```

-	Layers:
	-	`sha256:44ade84d20012ae3101835f6d6a4d1d04c3e007e3dd29551a4de5be362c562d5`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 7.4 MB (7389135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fea537d838c42aaec650bad4d471c6218857c6b7a0f956a0284d96d0cd72f82c`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
