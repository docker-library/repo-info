## `clojure:tools-deps-bookworm`

```console
$ docker pull clojure@sha256:90f98533ab00f27af8798863f57fff31daeadedfff32621c0a6fefb86c4c44fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9a7ba6d719adf6ffaa10705951ed837179d38d76a2b078e126796a508b75b14c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219287609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10cfe49e801da56f20d8b54ee7095dae642d078d35626e0e93140d09a73760`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:50:13 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:50:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:50:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:50:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:50:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:50:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f51e38b76aa7eb1ca730a726ea811706b5d5502d598e614bdb8ecdeb8998864`  
		Last Modified: Wed, 09 Sep 2026 03:50:46 GMT  
		Size: 92.6 MB (92615074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93891fb2e187f7ce1001fc3df287bc3c373cce92db1575eee5ae5f0efb168c28`  
		Last Modified: Wed, 09 Sep 2026 03:50:49 GMT  
		Size: 78.2 MB (78174128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85594530e52f3652606208d0991adc3f39f158cf9d625e726c62b087f9e60297`  
		Last Modified: Wed, 09 Sep 2026 03:50:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc14d278dc7a280e757fa4f23a5e502ed42ce806b3b0f2614d7122978cf5f7c`  
		Last Modified: Wed, 09 Sep 2026 03:50:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4493e1da18283579924f49153e502d7251cda4ddf62e5e6d4b46cb3903b39a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bdde8f2363bdb7c1048edb5b7955cc53aa2122a34b7603d4d5132348e7037d`

```dockerfile
```

-	Layers:
	-	`sha256:861833af9d776df57eb84f2049fdc0bf9c032981a5c2cb65b0670ad484e32861`  
		Last Modified: Wed, 09 Sep 2026 03:50:47 GMT  
		Size: 7.3 MB (7349992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb155511e8bc4b1d9013b9c74dc8e39c45174d70fcc7c8f9e205b41e22dafe7c`  
		Last Modified: Wed, 09 Sep 2026 03:50:46 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cc6836deb88c7442cc2fb808802b7ca409f407523cc404453660a6467c603f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218091322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9ec257c45c0ba7943c8ac4815672c195fa79ffb635099e6ea1ff96e68a44d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:54:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:54:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:54:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:54:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:54:56 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:02:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:02:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:02:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:02:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:02:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf6079080e89dd3f405d9ea79ea3a92ddb815b87c83c3d46a97774a98d72ec6`  
		Last Modified: Wed, 09 Sep 2026 03:57:50 GMT  
		Size: 91.5 MB (91532226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4999eebe05d3c2e93d12a6944b0c18e2d93a3e0c61b4360b90a94bcbb6cbe7`  
		Last Modified: Wed, 09 Sep 2026 04:02:22 GMT  
		Size: 78.2 MB (78174404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd3a01a902a5847a268d782b0ab28d1d439d3050df52060fb88bfbb2ce339c7`  
		Last Modified: Wed, 09 Sep 2026 04:02:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b07611083044abfd73e66f19259ed431d3f3b9b16392809443db0c00281e207`  
		Last Modified: Wed, 09 Sep 2026 04:02:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d51329e34e6737666d4a0151faf2275085d52d36f26ec26f1c1032a489aa095b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7372986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4578a7d00a3cedfa677e64fb6dc26fc6f5cb2ad86c60f321ff37414270566ee3`

```dockerfile
```

-	Layers:
	-	`sha256:feaf7a36edc70e2e2da1f5297a12a922b848876d98fbf61480aed1920eb9b23c`  
		Last Modified: Wed, 09 Sep 2026 04:02:20 GMT  
		Size: 7.4 MB (7355824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d091c533765e2a15c3ce45ba5efa705411130eae03dc6d2fe06c6633cdc23308`  
		Last Modified: Wed, 09 Sep 2026 04:02:19 GMT  
		Size: 17.2 KB (17162 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:82cafb1692c7811e56eaf6ba93d1a5834ac71eeb40da3a451a30646610c8c52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227583423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732f55cece29b890dbea593361d30c3c339c5d480bc6f67e084cb387d77bd584`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c742bce4507df143404817b0a921613db4d395802f505b90b406d69b2e1502de`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 84.0 MB (83984795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb71c5ef1fa9106135e1d9670c8069ef6a2eff46170520974311a80a3a39343`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bb0942b218e1e0e998a09d4a691081e231f6ba131232447ba382c4df172c07`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:684777d56da1a3762aee71fabe70abf22e007b42616efb7e9daa6a44de419a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7357340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad7c1792dafa26a1b957f7b82a67a1a799a9f0476e376c776cb9638bff1fd58`

```dockerfile
```

-	Layers:
	-	`sha256:d1eef1ed74a1fbd24f83c99eeccadca35587e9a3b7ee5e23747305adcd215a41`  
		Last Modified: Wed, 09 Sep 2026 11:16:16 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d3a6a96c4606ccbc1aa9e9162d1cdbd5f6f919fc289abbb15cdbf1af140c19`  
		Last Modified: Wed, 09 Sep 2026 11:16:15 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
