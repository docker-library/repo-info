## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:91207fc85334f5c87fddbde71850e32012e31f9ab9b90242dd12838ae0d8cb36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5af8ca14d3cf0fefecedb1af8093a7bd824180c75843ea06584b670c5e3fc2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253166607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521d9ce82b126d2af07154536e32ca2d243fa73e8ba9f3ff0fd7f51c6142137a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:09:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:09:41 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:09:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:09:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3863fbd3190a9978284f5d9a1b3552bc95a7b1ca79bfa2feaab35c55a13a68ab`  
		Last Modified: Thu, 05 Nov 2026 08:10:19 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a70cf4ab77e10a2472420baa6931d4a21af042e972c0a1bf7d881005242d89`  
		Last Modified: Thu, 05 Nov 2026 08:10:17 GMT  
		Size: 66.5 MB (66508129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941aacfa01195ad094d939905cc4dbfec3d7ac1f4e9180ec1b4e4d73a4c7b7c0`  
		Last Modified: Thu, 05 Nov 2026 08:10:15 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7559919431a23e5acc91a063ccfd6c71212bfda2e9667e23cfe14bee38fad2c7`  
		Last Modified: Thu, 05 Nov 2026 08:10:15 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2ea5826d255f36ca63a0aeec3a9420035c0aa32ab7fb6c9bc73dc4e09861b23b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d02ae5bc4d0488aea5b3a150ff33d03fa9ebffe0de3311f99c23ed8bcc2b8a`

```dockerfile
```

-	Layers:
	-	`sha256:ec68c4feeec5b9decad43231cfeea629056db06c4413b4a3e76866960afb1c83`  
		Last Modified: Thu, 05 Nov 2026 08:10:15 GMT  
		Size: 5.1 MB (5119957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d53c9645142c79c6399bf10941b11c5132ae6f514b48b19ced6e7fc6dec4b3c`  
		Last Modified: Thu, 05 Nov 2026 08:10:14 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:05f385b96542a613d4ada8dd93ba43ccd6eaaba71ff861e4f708b1c1001c7ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251337318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2aec5b0bf83443cd9605522952083f92cf40a144ae27692d8322484a9068e48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:19:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:19:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:19:00 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:19:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:19:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f18923bb1eea5051763bb8188e624987f8f2106a7fe44a878ae4c8ebc1cb2d5`  
		Last Modified: Thu, 05 Nov 2026 08:19:39 GMT  
		Size: 156.7 MB (156691634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7036198d4a424a7e8b3be1f11ddb7259ef35d5997e0164c845a03f6d8078988c`  
		Last Modified: Thu, 05 Nov 2026 08:19:38 GMT  
		Size: 66.5 MB (66500284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9635392c65671ea5a1b9eaa642eceafe88b13559a4ae45ff884dca4158d95d3c`  
		Last Modified: Thu, 05 Nov 2026 08:19:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bece60a0013f9a815bc1bb8de7f419c729139c47184e24a8c94a24387e3a242`  
		Last Modified: Thu, 05 Nov 2026 08:19:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5403b6b4c8882010a424dd1c60daf29f1e714de16e1249c8d6d7d994a2cd5078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0556ec36275ce2bddb83cef083a2bc79d434f4d0665778a714a43916ee758c`

```dockerfile
```

-	Layers:
	-	`sha256:497fa2748b50e8da9a9b04fc53df38d4e6c4ade7cb167866f1beb3954247a7c7`  
		Last Modified: Thu, 05 Nov 2026 08:19:35 GMT  
		Size: 5.1 MB (5125718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd30459564316b2033d913e5e99052f5dd42289402d2f1021687eca500fc4695`  
		Last Modified: Thu, 05 Nov 2026 08:19:34 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ea333da5fdb44f43b092b2dd1ff42241adc41a9a1bb15bd923212e0390d46a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262001566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cbc4e0173ca2b29822f6e02351254f0ca8c6ebee2e6f999224198e51e20c7b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:58:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:58:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff506ef2702f192437fbaa577e7a1aeae958306ad89a046f8d92eafd8f47b31`  
		Last Modified: Thu, 05 Nov 2026 15:59:33 GMT  
		Size: 72.3 MB (72333727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045d35e0b2c6588f9dd2afa2df47e597f16ba93a680f39f58cecebcb24b9c5f0`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369a007bd47966d56a5abc637fbdf619b262a82353772a171c517a17dde1a08e`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39cba561dd52799cd0cdc4002721431e2afc9e82defa6b456ea19b79d4d84f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e652ccfcad943f52ac89c18c5343e22d1f399500aab1bfe64e2ee8cf24a6396d`

```dockerfile
```

-	Layers:
	-	`sha256:3c9411567f6d787e06d8a92e658fd0b7500bc782b7ab44c4e437afbb5e0ef282`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 5.1 MB (5123869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8212567f90983858967290571a4dcb88d0be1408f76fd840cbc4fcd6cf173bb2`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
