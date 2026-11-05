## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:3e4798e4a7fe73d618fff14e5a7129019d795bcf10c6a065d9f0171ebfcd23f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3b578904a788dae59e92f6c15d9f35d31ccb7aab0babd88d4489db07b83a357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262000745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00dfdae3c075e14b6af799baee75e46336f08c7c748ce272e93789a9553c1cd9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:33:19 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:44:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:44:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:44:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:44:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:44:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6762e34942ae5aad8598700bf20d6ad9a3ad7d4fa664b90fb8574adff622c7c`  
		Last Modified: Thu, 29 Oct 2026 19:37:38 GMT  
		Size: 157.6 MB (157573298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f211afe67c74fe6a0483abca93054fcedcd8d717e098987aa2ac89070204a2`  
		Last Modified: Thu, 29 Oct 2026 19:45:16 GMT  
		Size: 72.3 MB (72333562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1abf198cd45b09ef6b2e72d8d1121abfa0ef37b7873f5f2175650885b2fb181`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b51a514e894955dd8269a2a93b302b7b6f04f5347b768863850599e994aefb`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8020097c1b28f1d180fdca9103e92ec266119c8d08fddcf332cd0408774fd53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65868ae92891beca805d6de36762b5cd83c699cf699930d26e72afd9e808b702`

```dockerfile
```

-	Layers:
	-	`sha256:62e4f2445fbc7b89a5721797b57627294b04ba784ccec620e10cbcadd05df938`  
		Last Modified: Thu, 29 Oct 2026 19:45:15 GMT  
		Size: 5.1 MB (5123797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5567e1e6ed9152a46247a032589a0fd4b6a00745c170ba3348806ac4993fee40`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
