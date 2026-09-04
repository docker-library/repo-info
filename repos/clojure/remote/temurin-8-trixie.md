## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:961bb75a9671c77552fa3fd3a600356bce4d5c869ef0c5e08ddf8b121a272dc4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1de0fa6a746506c306872b4d5c1c385411f85887a754f4f8e29914389f43a8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190573301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b4302544c97dd771d7be5b8cfc600d2e8466018643f1875367e3ffe3272226`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:01:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:01 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505b22c41ef892f8b85993e8e325126c2d2bf1f6d44cda80debd1b648e3a6cc7`  
		Last Modified: Fri, 04 Sep 2026 00:01:36 GMT  
		Size: 55.2 MB (55164381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435e9753bf82e6a41906de720086055821b611975ffae824a0e74e5c13853887`  
		Last Modified: Fri, 04 Sep 2026 00:01:37 GMT  
		Size: 86.1 MB (86070447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c1236b6017f4697ac022cd9513f90a67bc472eae4f5bebb18068179779b8f8`  
		Last Modified: Fri, 04 Sep 2026 00:01:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d77dc42c562919bdafa769452fdba831f419e02f945cf3babfea3a9d3c8383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b74bc8f57f69a636fa8c8834e53567d730b3f94ab64fcae6a662ef12acc455`

```dockerfile
```

-	Layers:
	-	`sha256:e7d655bd8fd71e49c959608f0a2145e3c769fcadc28ad0bb379413efd2fa1b14`  
		Last Modified: Fri, 04 Sep 2026 00:01:34 GMT  
		Size: 7.6 MB (7594231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45b7ffe18ceb6483debb7922baf9283160b7317ed93c5d9425adeac6169d5efe`  
		Last Modified: Fri, 04 Sep 2026 00:01:34 GMT  
		Size: 14.3 KB (14323 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9477f318ab5a27d1110580010cdb116cb10447cdca6be8e9dabd7a5871cd0703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.2 MB (190235886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f46127cb575b44d733fe99a0715414acb8a904d259d2090335e4a792e95c25`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:28 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:05:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2f9c49ad49a38824135df3120c8e35203ea745c52c5af498a16e30ac8c0e03`  
		Last Modified: Fri, 04 Sep 2026 00:06:07 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa4ac57224bc5a9237216d04a579c8051cc574626864dd4231e2123bc5ef896`  
		Last Modified: Fri, 04 Sep 2026 00:06:08 GMT  
		Size: 86.3 MB (86267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49ffb42920b472fbbcb9aaa75e35e69e404b04134b174ac5e313456e4ab3aa3`  
		Last Modified: Fri, 04 Sep 2026 00:06:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b87f39e388920521cf80c51a7810904a8d5ab38366ddc4106dc9ec0930514fe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7615765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681723f208bd78494234377bdcccc4eecb797397ce85d90d41b6fc0f09fcd8bb`

```dockerfile
```

-	Layers:
	-	`sha256:3f6daeb55724d57c81d53c8c187384c8eedd9583988bbb4122bd9626833962de`  
		Last Modified: Fri, 04 Sep 2026 00:06:05 GMT  
		Size: 7.6 MB (7601324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bf30b6011237cb05f1dcb0a4a0c5359a19fae08da06cdd0e1aa7bde7f55c465`  
		Last Modified: Fri, 04 Sep 2026 00:06:04 GMT  
		Size: 14.4 KB (14441 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:122c83c6f67d476f6484fc88234cc1467a62ce2a84928abba3935de2523afda6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197552300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03582f31e000d2056e2f7da8730a83228490c524309b8c703577a8ef9464011f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6d6dd11415fde80284cfdff67a20a05744a67bb1d841cb6e0604cda6f3c8cb`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1c9aa47577f9e4a7942396f28c1c3b41470ea3d0ce382e1a86a0a5bfcdaf2e`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 91.7 MB (91716710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41621a4b7f1ac22a7d0d247df15b0c1ff040238933cf24ce5129c4946d6345ad`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:570c7017a55d119545a131f1c28a57cae4991e31b7903e6d2ccf4f4c61a3a871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e5f5055bf9ca8e35a04d77da7eab4d9509f9f7061646566e4deeb4c4aee542`

```dockerfile
```

-	Layers:
	-	`sha256:64f7922f9644c43530b943837d05d3920e2fcac5a7b547591081f8cec6d2a7ad`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 7.6 MB (7599247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da8658e9ffc2899d33f452791c47aaadf80d89bf1f456a67fcc4982a23090700`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
