## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:0d004c5ad7752a0aa608c538f41634ae8d03ceb7e6495ec43e49c5ce131a99e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:baa4a1349da23e308ea344f3015cdc3625285a10821f76160a9bcd2f575814ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152225565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8ec3e139251792eee002133f464dac8564f9961f8d5f664ec83c32bf6d9db9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:10:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:10:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:10:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:10:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:10:19 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:10:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:10:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:10:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc895f1a983c31356cf2b805ab860db09bf16bd023888344c0c2cc12889300`  
		Last Modified: Tue, 06 Oct 2026 02:10:54 GMT  
		Size: 55.2 MB (55192273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a42629f7411ddee4517db157d04211b869f441da358c9c943526321c55156c`  
		Last Modified: Tue, 06 Oct 2026 02:10:55 GMT  
		Size: 68.8 MB (68783324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e884c342a8063eab6e9644150e95b5c065c6f8d6eea2e66f4abdfa20e1b8358f`  
		Last Modified: Tue, 06 Oct 2026 02:10:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57295981652930dfeb78178498cc8513fdb7536ffde84d3601160dd68c924305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2721ae3a8c096fccf9840b604545d99927f0a81e641fcce2f1b0b29d35b723`

```dockerfile
```

-	Layers:
	-	`sha256:557cb783d8737f3693cfd72fffd90bb5b092553acf8e95c361fb935f57c409fe`  
		Last Modified: Tue, 06 Oct 2026 02:10:52 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4690b886f448c4ce7f3ff21a18353a508f0c98170c22850849ddacbd149ef33`  
		Last Modified: Tue, 06 Oct 2026 02:10:52 GMT  
		Size: 14.4 KB (14401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2c03342e42f895631304e8b3a6ab3e6c2edbe1efe382bd508ba6c03ff4e6e596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151123561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba1953ffd7cdbfeac64c17f28dbf51769346513e7752cbbe0cd94097e967891`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:16:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:16:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:16:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:16:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:16:33 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:16:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:16:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:16:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5112c6cb5a3156974212129f19e72e71c7a25497fd40ad4832c7945f6c997df`  
		Last Modified: Tue, 06 Oct 2026 02:17:07 GMT  
		Size: 54.3 MB (54254277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08dc23162882dfe7ccfdb824130878629882e67ff18dfbef68b379fb5d227442`  
		Last Modified: Tue, 06 Oct 2026 02:17:07 GMT  
		Size: 68.7 MB (68731461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966ec1b1ee57324d8453d98d300e2de2056031070ba9fc447af89ede3fb6a884`  
		Last Modified: Tue, 06 Oct 2026 02:17:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:397958c1f8601f97204c64c904171ae561db5f594379770a90d85f3164e9e221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879a358ac59c818a33556423f7e0acdc7eee57710d833292b67abb649a0a0b28`

```dockerfile
```

-	Layers:
	-	`sha256:680d92ed87cd7a6552afb90afee417cc79d110fb0453f08402238873c1c52d09`  
		Last Modified: Tue, 06 Oct 2026 02:17:05 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91467107f02522f714d59872cecc6adaf28cdb6548998c02c87693c47b452132`  
		Last Modified: Tue, 06 Oct 2026 02:17:04 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87e9d1cb7c4ea5954e123bbc52f7b04ccfa508d0691fdc79c733fcbbd07aa580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159526743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af982e25cdfc418a00798d61edd722e4186b6b92b44d28d54354582aae0a76e9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:40:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:40:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:40:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:40:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:40:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:42:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:42:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:42:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e1614afc6b61f0a3122078683fe0ef0dc6e2a16d8a4625fb7c19dbc9506182`  
		Last Modified: Tue, 06 Oct 2026 09:42:46 GMT  
		Size: 52.7 MB (52667094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1df5df4cd9e52096c0283ace5aff84dc3fc4e5e89e76bb9cc17356ec936c0b4`  
		Last Modified: Tue, 06 Oct 2026 09:42:47 GMT  
		Size: 74.8 MB (74766569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a81ba69745736f29f0e0aa0862230a8ebe0ad45d8321265754ee47686f9431e`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:42e14834497b6ec8c57615040518dc415eedab8c86c00df80031b20f8cd42ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872b9b0dc6952fb6bcfb725d13f318a4a0670b6f0ceb62e12ba42ce336e78de9`

```dockerfile
```

-	Layers:
	-	`sha256:e042380e2110b476d7d558f58cea34f2f0f9e26b3a2b23fc51a42182044c5f94`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:350f52f865fa9d607e5e41a56757f47b8f36741a8c2892c8b349d2fdde4cd3df`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
