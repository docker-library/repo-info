## `clojure:temurin-25-trixie`

```console
$ docker pull clojure@sha256:8986cec81100e02b312ff6ceefd18de3def825e5adb3dd741a64ee34984d967d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e9817368a705086467eab9b3aeb1556b43bb19144b363a3afa50ed76fcfaedb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224607338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d910a6bdefe55d8be344e574d251db6069b9d26ba11a60b595d5e9905c6899a6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:12:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:58 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:12:58 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:13:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:13:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba2b50dad7e36b5e67415cc501a214884c00ef720132e97623823b63e3633ab`  
		Last Modified: Tue, 24 Nov 2026 05:13:34 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92ed3e8616f0ecc61284399e29cdf723711bad06e0e6e5b9a643de404e921af`  
		Last Modified: Tue, 24 Nov 2026 05:13:34 GMT  
		Size: 82.6 MB (82582559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d760126f58b7ac544cbcc779dab86febe131921b45729568907d10bf2119a34`  
		Last Modified: Tue, 24 Nov 2026 05:13:31 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6fba03f4af5777fceb919087c25476c0761b95e47f2cbf42f341d4a9c90731`  
		Last Modified: Tue, 24 Nov 2026 05:13:31 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b34a364d6174641b1b0fb78563ae07ccca416390806d98a0937a04c2363b794e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd83ca8b0522925214dde0a5e65c079fa3109dfed24b41a9c5a3da2def27d97f`

```dockerfile
```

-	Layers:
	-	`sha256:3029b98c12d7378833de0fb2262c54e8d94e55a7bcf6b15266dd16e625be7f48`  
		Last Modified: Tue, 24 Nov 2026 05:13:31 GMT  
		Size: 7.4 MB (7444079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05b1acad506f326a377658ad6e0a8858b54295c767186cba754827e37845d52`  
		Last Modified: Tue, 24 Nov 2026 05:13:31 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3e43ff260a156e0c98a89dec8229d9ab8a24617f0c795aa1c088e94e9e50064a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223737054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211bb088b0c95fd4817f9ba62c8e6ae2473cfc432444375a3c108796813882c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:18:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:18:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:18:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:18:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:18:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2712da519982f064e434aaedbbbc595387b0ac36996faf47e25c4be1e233612`  
		Last Modified: Tue, 24 Nov 2026 05:19:11 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c315510146f7ee2b9314f0e588032a5fcac111e551f8ec8ebbebd6122a9c9fa8`  
		Last Modified: Tue, 24 Nov 2026 05:19:11 GMT  
		Size: 82.4 MB (82411486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328f35eb1d43a068fc60d0a1e6c53fe748955a06fb3d7898fb3088d062761e60`  
		Last Modified: Tue, 24 Nov 2026 05:19:08 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823199c161f9c7ada5da6f4964f4de318376c0e812ff07633f86b173373d00d1`  
		Last Modified: Tue, 24 Nov 2026 05:19:08 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:09ae3974cc34bcfc793546247c144a088262ea0523ce3c1bfd3f9c5e48305a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dbb98ae9751921051a165ce471ee112408d13a68b97b322fae4ee03fefa4d56`

```dockerfile
```

-	Layers:
	-	`sha256:ccca4afef4291cc7f72c01ffbc723cc24f3b130d99240eb77bb2dcabbcc18471`  
		Last Modified: Tue, 24 Nov 2026 05:19:08 GMT  
		Size: 7.5 MB (7450493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34a3ccfcdc57f2419eca1faf6299f4d212381855334f281b283b2df1a4042ae5`  
		Last Modified: Tue, 24 Nov 2026 05:19:08 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ac75a80860b1e4de9b293d63aac5de4dc561c83dc1c44480deb6e5168761a904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231354702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0a8826ff0a441b7ea374906cb5ce3c07855d39d6fab9ebdc616d8e67f3994e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:57:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:57:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:57:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:57:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:57:21 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:07:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 13:07:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 13:07:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:07:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:07:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a98da685fae8d467fda6888b086c6968c2373e3a2988d4a7b74f2380290950f`  
		Last Modified: Tue, 24 Nov 2026 13:02:35 GMT  
		Size: 90.1 MB (90119602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9454e21945093b2c7037bf2622a1dcdad5e9046f8b3dcfacec00020fad0adfb9`  
		Last Modified: Tue, 24 Nov 2026 13:08:16 GMT  
		Size: 88.0 MB (88003718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae925250d13a96590d956605d82df839ba3996b516cde087b7ccbde57e9a08f`  
		Last Modified: Tue, 24 Nov 2026 13:08:13 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18648f4eae7e2b9fa72b24ee6793956c318092c3a90cf7359389750847a57cb`  
		Last Modified: Tue, 24 Nov 2026 13:08:13 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a672d30891786ec36941d06cb59fbbe13422adeb8c202139b3d001e0d5fa07f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebe76467779227eff2a34d9c499689351e7bd6f81c26e2064e552e3cb7c7945`

```dockerfile
```

-	Layers:
	-	`sha256:cb6eda9ce3cb88d2c58a4ec686f87248e086e91bf3d83de7234691230b60168c`  
		Last Modified: Tue, 24 Nov 2026 13:08:14 GMT  
		Size: 7.4 MB (7429957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d46f08360af105dfef35312774e5be45254e53d83c8fd83ab6d5b76b923fd34`  
		Last Modified: Tue, 24 Nov 2026 13:08:13 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
