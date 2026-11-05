## `golang:alpine`

```console
$ docker pull golang@sha256:dbaa054703263d06c8b49576667418473b6231f8c0fa69dee103207fdb8e3654
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:0fd028db9bdd4f01657bc8047c209b04d8ce19b853d776bd6f1e76a41729b936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75248702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db2494859f5857dcf770d774a9d7c2c952a0f23a40b02de187bb41d76eac422`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:19:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:44 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:19:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:19:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cd85cbb99965c7b0f724a0fc60517c2c41f3d77b2da9236eaa8717a3de2357`  
		Last Modified: Thu, 05 Nov 2026 19:11:14 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6fea6449ae0cdc0aa3243e118dd884d76a5a908c6e37b868632ec1dde4363f`  
		Last Modified: Thu, 05 Nov 2026 19:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:24f7cc2225db04dbd85da755a965124c6bfa4ed33442e6fee98ab65b9a81d385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.6 KB (203555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e23d211a82f9f67ceddbabbc0815b9e0e1c7795733d4a61acd620567112609`

```dockerfile
```

-	Layers:
	-	`sha256:c4cc3d02a46adf33df05ed95d1b0c3d71f8d88f0d478306b48a918da298e233a`  
		Last Modified: Thu, 05 Nov 2026 19:19:59 GMT  
		Size: 177.5 KB (177528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e196288fdc96c2736f57598194aba42050f6c270cdbe51aaa274cc973161fa5b`  
		Last Modified: Thu, 05 Nov 2026 19:19:59 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:dfa28e7a9ed96fc5217c64710e86091e0ea9465194e1aeb7de794f1b58323f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57872a2084dbc414d534997f0cd73f21c620b0744a7e8d66f9862b9ff395f45b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:49:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:30 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa769d4c97878c047af4100c83a1a8491867ca9a581852472e86999b7532de71`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10be0e407951f733082603dfdc29cb85df3ee39d0e9e8de63ad5efeaf197479`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:fe85957e624ad9eba72077b8bfba344ee278b397f9bd6748cb786871ccd9dc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38bd3a367d48997c76a7000c629f7d2798650f6773ef3b7dce37e143cb6b9cfe`

```dockerfile
```

-	Layers:
	-	`sha256:4f52b9ab291a94f3e4f43131ae1ddec30d2409fbed578db716f79c87f0802849`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:1358f64d1e2e860bf29e21e694551ecbf43d73b519ba5008f5087ece46b03979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73168218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd47b3e480abab430c577c260ff98c702498ff2cdeab979272ce24062163770`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:24 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b852c2d6183156ff5a35236afa63ee5a082b1a3f0908f4bab961fc00903bb70d`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 244.5 KB (244522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e05bbd8e46f42daed24d2713831b4bbdb9602bb849f5daf1d8870df1e80641a`  
		Last Modified: Thu, 05 Nov 2026 18:49:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:a547eefe55037c64a30be5c2b7f812ea8fb940326af40c152d394c4a90b6187e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 KB (203094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90223853fbaecda7bcd737b118b8039b9b6e6ccc4ef38447ac8532c0f14aeed2`

```dockerfile
```

-	Layers:
	-	`sha256:22a4659eb93c25e1515375f9624701d87924e7e47f855159c5103ffb35a3105c`  
		Last Modified: Thu, 05 Nov 2026 18:49:42 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdd0a583f6d34e51656a62501ecb014e1e6634dde11343955ed2b7318362a2ab`  
		Last Modified: Thu, 05 Nov 2026 18:49:42 GMT  
		Size: 26.2 KB (26164 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:12c7838918df713b810a0576d68d06ab17971b730a0e8855b731d9ddd07094d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72157402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e721866aeff9542b3f64399b28639b03a3db6f46994a5a28d7bccd7e283092f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:14:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:46 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:14:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:14:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af31f6c71c67a7e6fbdc71e17f45e5fefdfd53c7cc59f6dec60bffd86ef890`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 246.9 KB (246917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd9da892f7923a673bef7da478d2574668de7a18c4763264b09da2e150ff3c5`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e6a4c28a4f09a6b716e7d4861778a4a1b38bacee2eb6bfa8a5d781117a45b38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb677af7c6fc4b001040e1738a32e9ad82086f4a804b615658f9d41cc8faa7f`

```dockerfile
```

-	Layers:
	-	`sha256:3ea86ce415ee1ccf1d0d35a0f05a0fb99b6a47adddb3b731f5cb9df820a712e8`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 177.0 KB (176982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad2e2976c5781b74f496194c18ee538e8dc3d92f54383276f9c1b397a57f9e08`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:9991d42f1f68631395116dd44cdd58c09c5d6da05ce13ce4446016621c76b685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73266392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d98cb52dd8d714e7336dfe34fb2ad02186e9e94614fa08aaa149beec6040b98`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:31:41 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:31:41 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:31:41 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:31:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:31:41 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:31:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:31:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61589ff994b5d4ce279869b4e923ec5c6ef04509d8394fa87215a228281f83c`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 245.0 KB (245005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc7d630ef78a52a3a3d102170b97d84f20d196d7a68db5408dd8a85b97a1762`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:26fdf94cc8bdd4d9ed7b92ead4d51b7f924e4e9d4dd41adc2a6c8d71054f79ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b46ddbcbfc0077b4fff96808257ebcba80a72951d31ef753b412c26e39bcc9`

```dockerfile
```

-	Layers:
	-	`sha256:38eb388e1c47b7550b74dcb4fd08b95a2d866296643abcc83353e139cc29e9d6`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 177.5 KB (177467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a08812213e5d306f5aaecef2757db37c4af314f4db5221fb5b478360bcab8267`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:18b7e8d84b36bcd5ebb804451004011e3c749b0e22894f3dd2033f9862a861c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72560505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1ba026e49a06ce3df4f9adf0735638fbfeece5fae613f33171e6280a3200b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7ae18abeb90b53c09d2fe6ea343dad7260472152507eed3a8635b4530f164350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 KB (203050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07896567f5189d2bfa6a0d9ff78cb8866144831c1b06a0fca440125781d819`

```dockerfile
```

-	Layers:
	-	`sha256:58367b2946b60f20f0582e163a2b2dc1e985262a1c33c6f75efd4a0e0971b2ab`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 177.0 KB (176951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f8df8a10a15801e6c2f9ed8a6bb2953ed2c80f5d7005653e6c32991f3239e6`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; riscv64

```console
$ docker pull golang@sha256:4877448f1426e1d0aaf8e07aa9f178e59820baae5fb3b8cd05b2a49cbf5167d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72996671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bddd20592b7fdc17979078b923fa05f41e5a4f1ebbe631dfa1f4e0685adb3f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:dd471d87cdbb039f687030e32323344e93faad665e3086e042a600892040c117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 KB (203046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e93f35ec817654bc52445dd4309c437d1912b5bbd94af311b36e9694fe6062`

```dockerfile
```

-	Layers:
	-	`sha256:99d01102f3d5f78791dba9f81bebb40e20844d1d957ed86e9cb1a4a41fff24af`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 176.9 KB (176947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d0486094605e2f05ded43741b72fc1abbdbf8c434abd5c1344472cd599c6cd3`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:a5cd4479805b518a06005e1a3544e5309af0af36191a97027eacc8c4fab46179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74248031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec435ce8a5f302def1ebd29120b54c90a61e9bddbdeaf5ab6da1231a111b4e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:15:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:40 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:15:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:15:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa896657d8763e0f093ba3fd892c1ca57b016eaf8be90b93308ddab74fdc8a9b`  
		Last Modified: Thu, 05 Nov 2026 19:16:16 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bb68783ff0accb6f652fe454b9910326faff5c91617a0a67e3eaa0f239502e`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:a0e7fd05fbcc9e9c9a16e27e905d5c2742017c00adc20e6eab15aacdf1fd520f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0a14850a4169714740801619c2e4f49cc22375ca69986cad9875154d8a5de`

```dockerfile
```

-	Layers:
	-	`sha256:e0957abda4d202ef3ce83b97f7c08d6937932a9b0131e22c28b87e59594711d2`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 177.4 KB (177373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaf6a287e0bf93695a7ad98e0de1040ddf2e27803008bc30b1e5e4a3fffaba15`  
		Last Modified: Thu, 05 Nov 2026 19:16:16 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
