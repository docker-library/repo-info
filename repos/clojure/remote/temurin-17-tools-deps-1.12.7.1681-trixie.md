## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:536527a92888e0ae16b7ce0ee513752114ee93dd6f2c183492eb7684110c5e02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bdefe4d1369d79d740ce7335e79e51e1954d6c6b13c211f1ef3e3557534d5323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278107532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80ce6ab4ad6c94598e4d541481ec2220bbadd0cd8edfa4e7c98bdb33a4df55a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:10:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:10:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:10:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b17e55b098f490cd3b6c5576937e31afd81ebd6caee3622e6e80038989a2a`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 146.1 MB (146114278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb529c61c8ab36f88829e009a6cbade4b5fb153ebed86fbd9a4b9b4d9ce08ad2`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 82.6 MB (82582429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f671e0ce2f6b5eda2106bd086bf16d640b1d7b250a15bf6b6df363e797b168`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f4137ab390e8e5113527f4ecdaad02aa1be3046e27721ea8c62c78430396a8`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9919a5c16f314b0993f1a28f6678d088a33afd0b2a556877341638d3c16dbe9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff52ffe9724eca0a09bb6c5f2276bdaa408b935d730a1632503563df5f35075d`

```dockerfile
```

-	Layers:
	-	`sha256:e0cece0d1c38e6829def6072bf2fe8ee16b43c488f2573fa879524b24f1fb112`  
		Last Modified: Tue, 24 Nov 2026 05:11:05 GMT  
		Size: 7.5 MB (7476015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66b777fe8ed9d1edd4e710616c83325dbcdaf1b8e04d34a9d42be6aa33e34c0b`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff4d75e684181139091fe4d530805a63a4cd9a8a54b02358157166ece33c4866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277131324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1a0a3b76bdb56b5b337ecc0554833cbc0651accfe058bffcd4b24b2ca7837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:17 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcfa4eab02808074c32e1614e9a5937ddf295b7ebe1dd2278330feaa93459c`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fe9f5f19b286ab039fe113ec6b08d53c58721fd9b954fbef110af1dd3600aa`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 82.4 MB (82394017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641cb2238b595c09e65272994a093af90a2132d8b12df5b39aa2caee808d9838`  
		Last Modified: Thu, 19 Nov 2026 22:07:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df4f03b59812f39ae1b12ff500cec7b5c0aa25a39bded9ecf4d24806b2233b2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ba7237f357077760dccdb67fef0577371be647d8a48180cab80daf5eed148b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8145675dc6ba03977a1a6c7169cb3c9789a492a9977ba21c98d6094ccf355888`

```dockerfile
```

-	Layers:
	-	`sha256:aa3d0752cd276ef3490c29377c8f9535c441d24443d35319fbc49e63c0a7c508`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 7.5 MB (7483154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325363a5d4f94c0168a3f982229c06d3ff0c3360411c6d2dc3d5034fd420cfd2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7d6c30c6bbb3c2cdc0758331e8f78c92bd4b5573c3bc927aa7b85c3044cb4097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286110045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1b25cf41ab08b237ac6aee6d4d695d8c8c5e8fedbcfe67c801c8e38c92d01`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:18:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:18:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:18:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:18:42 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:18:44 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:28:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:28:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:28:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:28:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:28:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af8c705c834fd9320fa2c8725abcbb8ee0b3b557e5b63fda4fa70e0d585014b`  
		Last Modified: Fri, 20 Nov 2026 19:22:57 GMT  
		Size: 144.9 MB (144892641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2213624c37972c76920f6ffe814fc27c718a1e499ffe027766181f3f8976d466`  
		Last Modified: Fri, 20 Nov 2026 19:28:48 GMT  
		Size: 88.0 MB (87990268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d5ff884bcf36aad79fbd9aae8fac412797db1ab1e3f2f71549b3c8d0a68225`  
		Last Modified: Fri, 20 Nov 2026 19:28:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f0782efa1472aa15b9cad11d9f30c864f5626691422a17aca017a3d2afb01`  
		Last Modified: Fri, 20 Nov 2026 19:28:45 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:597e3551453edb66cebebd61e49e474316bf545e72a6c7408e6735a334d70e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7495896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91aab1b9eee97e5f2b31e1a2671f69cf765a0672cea2690f55a7e0a6d9a7490`

```dockerfile
```

-	Layers:
	-	`sha256:4a2519ca7a43093038f8ced742d052021e645bd5b3d1cd38be8d2faee80549f2`  
		Last Modified: Fri, 20 Nov 2026 19:28:46 GMT  
		Size: 7.5 MB (7479940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7620f9189c92963802b4713ec5d760626af434544de9e0f62635e1e10d8d4e31`  
		Last Modified: Fri, 20 Nov 2026 19:28:45 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
