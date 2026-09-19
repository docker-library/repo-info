## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:48e6f48589ae6c4d60d4f622ce2d3cd1a9eee14eb1843077978bdedd38b60e6c
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
$ docker pull clojure@sha256:c0e0667a884ee9bcc8923ba20e2b3b8452ff18439cc1e0752c6176d9f6263bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181842275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418b06735dd26e12e618b738b3a13674eab5cac7598bbfdd4750fe4fd4360b69`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:12:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:12:25 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:12:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:12:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:12:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028ba826f61f3a1613991d58c85d80771094cd6517acc3eb132c6fa5d13c03b0`  
		Last Modified: Sat, 19 Sep 2026 01:12:57 GMT  
		Size: 55.2 MB (55164374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949a9ddd2bd532b9819b9802b7e3558bbf41f285f9459e8bf7820f85a96f13bd`  
		Last Modified: Sat, 19 Sep 2026 01:12:57 GMT  
		Size: 78.2 MB (78173816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c1bc9e398077d698665368cca18c38664fe3f2c1d776b9f09714b6ec72eba2`  
		Last Modified: Sat, 19 Sep 2026 01:12:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dd8e301134e1ca725a59acd92d52405d31109c9f1842efeac909f302ec935252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e428fedbb92adb0a1eaef8003f14c263d1224b0f95d84ffc2ed12f8fb43f18d`

```dockerfile
```

-	Layers:
	-	`sha256:2326c45f7f8383eb83edd8f5a2555033b01414614e553738929f52fa72d2445f`  
		Last Modified: Sat, 19 Sep 2026 01:12:55 GMT  
		Size: 7.5 MB (7500994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13d17529ff2651ca6f2a1cd2f30def2ced44c0320f337ef21042728e84943ff2`  
		Last Modified: Sat, 19 Sep 2026 01:12:54 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e0177d53c2c711381c85d82e091cfbd7b789570c256959f7d11a6dcb82f25bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180828063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37cc372ff7ed193b432ebe582956f8aec49b83d690f3d866b373ca7fdd4c3200`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:19:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:19:44 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:19:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:19:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:19:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941835bd32cdffcd6817778f3dfa5b4bf3b62c47b725338bdfc702a31a1d00f3`  
		Last Modified: Sat, 19 Sep 2026 01:20:17 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672706a5d11fd884d14959d86b986e6cee7407a5389da970f0e9ba3c3f150035`  
		Last Modified: Sat, 19 Sep 2026 01:20:18 GMT  
		Size: 78.2 MB (78174747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a1b92e91c7c4fd816ceb1c9be3f1a675e9bf9cdec7a0c60c547a6cf4311e6d`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:da1b62ad2817d9d10cdfee543332640082e9f8a67b3ce2df37fd6e6188a47a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac152c7cfa86013744ed6411f6c48351a3f7f6eec55ea72e0a4d64394e0c2f1`

```dockerfile
```

-	Layers:
	-	`sha256:20212252227496cf680f176a5fad1335b36543a5a0fa78a9bc341df939760bdd`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 7.5 MB (7507457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89244e3a9c944b26b790313f77fdbeefe4d1ac1752a1183668eb338160f238dd`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:8036e7bf962249e3fded2f91200cac9d9f53a1b199fe89bb0454443159957274
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
$ docker pull clojure@sha256:ff1053576a6066bda34027070f95dda5b238f61f31acc722c7422f2ab840f8cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd77db1cd0efff87cdf6343d0ecfea95ce8a5f029ead9fbf43bf44a8a909fe1a`

```dockerfile
```

-	Layers:
	-	`sha256:6339ac1829e922f755d5099fc3d9b599985793580011022a8b8da20ee4c3d1fb`  
		Last Modified: Wed, 16 Sep 2026 10:18:14 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb780e2a8dfe17afbf83d204e83438d554a81acf66710c3f0cc4a62dc4a7d38`  
		Last Modified: Wed, 16 Sep 2026 10:18:14 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
