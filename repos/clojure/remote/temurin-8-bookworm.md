## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:741e82c8a4072ce62ac3ad873ed711eddf83b03e9e809803e45d9a02dfd1052a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:dbe36ed6574e67363075e40b2eca13f678a43ef366c4e0bb8901df6bfb547bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181833147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f08494e9b7398fbeeffa9ddb06e85324bed7ed3e2f3ea61e84359408a3459eb7`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:00:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:35 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:00:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:00:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:00:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e7a48352dd998c3e6fd5dc7bacc8ef7a8168f7f54d1a769374ad2aba15fb6`  
		Last Modified: Fri, 04 Sep 2026 00:01:10 GMT  
		Size: 55.2 MB (55164392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684cf00471083b3b7320b861353477fa621a0e5b17f47a8c4e5e213083ed7852`  
		Last Modified: Fri, 04 Sep 2026 00:01:11 GMT  
		Size: 78.2 MB (78170749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016f1a1aa0c24c77caa72f36c59e4c5384753059aaa5b314404c96f278a36365`  
		Last Modified: Fri, 04 Sep 2026 00:01:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c8e4f6b105dad36a535108d213657ae35170eacea3954344b437322fe62b4212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083441eef0abbcdb663b0a3d48bb1ab78e99a949c942182be3ad6054d8995480`

```dockerfile
```

-	Layers:
	-	`sha256:a7a0fe60e42bd1ed1387d1352fc3bce4f0d318daf1b9c79eaa5f36c0e2e1dd2d`  
		Last Modified: Fri, 04 Sep 2026 00:01:08 GMT  
		Size: 7.5 MB (7501733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f677270c5f8561f5fa327b66d48118e6876d32407b6d34a8159209b9b044f75`  
		Last Modified: Fri, 04 Sep 2026 00:01:08 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:400f441d0211cbdce0a68010ff274c7686bc09cbc3b98adb31d2729b3119cc7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180817153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2cc3461f8fe9cb658e40b3ca871633d9119d8abc2bf84adc3e9323aff19ee3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:02:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798a9eee6fb347cfdfe8d4cf7e9e23353d725302f11b0bdaa0b5e965ffe9876c`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3143eeab7d958052acea590a74510006a76d61857e3bebe73683f82f4ff32`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 78.2 MB (78170099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d08b0837fdc5b065effc4cf32835c4761b728cc0bc9d068936cf84be8444f4d`  
		Last Modified: Fri, 04 Sep 2026 00:02:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:43efce1cd65e6e366a7ddffa70bdde31aaca5ff1e2481a250f9db593065930f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7522662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410d2178ec9c3a03b12208868f97c895b54ed208c3b8875275054bd384dd281b`

```dockerfile
```

-	Layers:
	-	`sha256:34ceb814d4a5c38e70813cbc8c0e86639fe72ee7046becf9694409a9c3000e9b`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 7.5 MB (7508196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2f179b2c8724609ac8e4ddf93808a0419f271db48d1e032e498b7afc9f38a6d`  
		Last Modified: Fri, 04 Sep 2026 00:02:57 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:8fe278e26c3b7aaefe07ffe37a029cb9ae043599b1e72dbd5748f8e5336112f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188997475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6689ddf577a535b225085c83d874463ac2719fc5c9398ebd6138fcde4bec1142`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:52 GMT
WORKDIR /tmp
# Thu, 03 Sep 2026 23:59:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0c2d5205fc55d3b835077ee231788be3c19f5d98cf670eb9556f1b27555247`  
		Last Modified: Fri, 04 Sep 2026 00:00:47 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3dba96c78115f9fb8cc0107a6eb8d1f6572825b20a116215e1848c99aa6dd6`  
		Last Modified: Fri, 04 Sep 2026 00:00:48 GMT  
		Size: 84.0 MB (83984402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb785d30ae761043b678af5c143058522101f5c3a8e258a5fb896d867fb58576`  
		Last Modified: Fri, 04 Sep 2026 00:00:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8328b92682a2863b933f75bda3d6ad741f4b7e82fb604e864ff3ab3de0a3596c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaaff15b2d32c97785749651ef8fbd0fe38e2114361e45929c46cfd34b54ef2e`

```dockerfile
```

-	Layers:
	-	`sha256:29813cfa24bfbae69c73a57607b86a3a0b0eca1729e12551be1fd8c393c0e41b`  
		Last Modified: Fri, 04 Sep 2026 00:00:44 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64213a10eff71609a47732d854ca7af4c465dbc0b85d61fba816c0699f469e73`  
		Last Modified: Fri, 04 Sep 2026 00:00:46 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
