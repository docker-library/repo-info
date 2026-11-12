## `clojure:temurin-25-tools-deps`

```console
$ docker pull clojure@sha256:618ff5bad53742b64e700dd8fae516ddf19683b36e5ea56dafd356266d0bf160
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:e56cdc3bd0042e41b49d2ff554796e40280a380b58fcb38897c4491c0eed427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219125079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4270e3184d5479b203434c7955d09ef2272a3c6889424c8291882d968d56eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:51:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:51:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:51:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:51:03 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:51:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:51:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6838a63a4c9a4e7c5136c76261555120e3a87abe480130d82ebac3890dbcec`  
		Last Modified: Thu, 12 Nov 2026 00:51:41 GMT  
		Size: 92.6 MB (92598830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b087f821babc4cb44a8b03026fa8ebcd948216b75b5ab0548a7b39c48e4860`  
		Last Modified: Thu, 12 Nov 2026 00:51:41 GMT  
		Size: 78.0 MB (77998220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f952e940a1653d9e0c3c2e435cf6754f7d829d3d8847786cd37581b43576a0db`  
		Last Modified: Thu, 12 Nov 2026 00:51:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fb2f73dfabba9f3b75a2996a39d4720bd4072bb1967e4833aef92f861edb01`  
		Last Modified: Thu, 12 Nov 2026 00:51:38 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:a1ccc0af0926708a6addd97aea1d3dab95dbfa8ff52f2dedd6b32a995e02dd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a792142b786b8b261652a9cc29f248ba58c59895ebb27b0311a2291a0ebe8b`

```dockerfile
```

-	Layers:
	-	`sha256:db453ce7578518a85b5cd7c7cf0a633a9f2ca2e93de26c474d60ff4132b4cb14`  
		Last Modified: Thu, 12 Nov 2026 00:51:38 GMT  
		Size: 7.3 MB (7348029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffcbfd9dc79e3607945be4058b403e4d17e3d5edceea172b6f24ab27af78a3e3`  
		Last Modified: Thu, 12 Nov 2026 00:51:38 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:96760b3976ddd9820dae8b1bd2d18fdc0f3050a8a14c69e96fc086aa8a0e68c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217938472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e814d0f2b2c7953d43c7f925fe608aff6552336dcafc14b9bf0546515a7905`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:06:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:06:36 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:06:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:06:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ac00c305b3139a4f90e8edd2703eff8a8bf3669fda1e400e4774347e6f630`  
		Last Modified: Thu, 12 Nov 2026 01:07:14 GMT  
		Size: 91.5 MB (91525584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8f67cfce02000933eb93f62cfe3abc138ea9916e4d8387fa9a38ccd27944bd`  
		Last Modified: Thu, 12 Nov 2026 01:07:13 GMT  
		Size: 78.0 MB (77998891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3a89331842491c940bbfa42f3d8b38c7e154adc5781d54f619df90e49a2f3a`  
		Last Modified: Thu, 12 Nov 2026 01:07:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec9071463bd8970a142bc2dbe418f7eab948061ae0712edd70d495dbb7fc162`  
		Last Modified: Thu, 12 Nov 2026 01:07:10 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:21f27a013ad5f4abd3821420af4d9e55bf2e70da3bca4040fc3eb0eeffc16518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8a4d55f9241c3914ddf251adb4f378b83c519b3b0d6708b114d76f3316d779`

```dockerfile
```

-	Layers:
	-	`sha256:5298261214ef21c71d76f0ab9a9e9eba582e88cad6b29e2c461989f9cf08d1e8`  
		Last Modified: Thu, 12 Nov 2026 01:07:11 GMT  
		Size: 7.4 MB (7353861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:071db1b278101c081340826363aa4cde3806bba185ec103cf02fcc46d28c538c`  
		Last Modified: Thu, 12 Nov 2026 01:07:10 GMT  
		Size: 18.1 KB (18114 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:a81692fccd0557d055180276ade63201e73d2fe034e68c03b6c02b6e3417c07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226305674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8232a5cc45087e960bf5a25d2050842d9921aaf94912c99555304104dd444587`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:08:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:08:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:46:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:46:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:46:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e811e2ed4773087153cb51d918d4412ad6aae87e34a833e2a78b59926760328`  
		Last Modified: Thu, 05 Nov 2026 15:23:45 GMT  
		Size: 90.1 MB (90111651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a436b06d1590db390b115076554c46d228d6230d16d86f12408fb986792f0371`  
		Last Modified: Thu, 05 Nov 2026 16:09:22 GMT  
		Size: 83.8 MB (83823859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf3ff546b6f4c6b45062a0de7f11eae8b77bd56e6f9be8d2a523757132ff8d`  
		Last Modified: Thu, 05 Nov 2026 16:09:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5271d7c6e01f31effc3ea958b0b23ec1762613f766ce531b85457a63180511d`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:9d5b5abd80f98a49028a4ef27febd0d98d0c1085daab584713933af852bd9bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b765b5f0a4eabc9fc3eb943564e346b4364af3e0c0756257975873735dca30cc`

```dockerfile
```

-	Layers:
	-	`sha256:7a3227382e834906c681d6ed4d6f15fe92c00de5018e4efd04adbc79bce10d1b`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 7.3 MB (7334728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f9bfbc9f450bdadb44051e40d1181e94310475e5be4880da7c62bf7d4c44999`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
