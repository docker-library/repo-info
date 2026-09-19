## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:d7731aae01ad34639e12e09ae3a8f0388c46c206e15ee80b83cf73a9005e59c1
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
$ docker pull clojure@sha256:96e20ff297b9a4437c2d5510001384ed117c749f63d8e5aa6e0d8ec3c485f523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189011677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c2d72680c62ab8f1c00e3b51fa629d6e656f85ef9d97caa70d8a632e50e57`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:34:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:34:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:34:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9c5b3b2b671097e691daaedcc90c4b99dbf1dd0d8a4ed34eadb76dd2361f5e`  
		Last Modified: Sat, 19 Sep 2026 07:34:54 GMT  
		Size: 52.7 MB (52670666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670adccd822c6b1f63eb1c8456bd4bc318d29b7637ae975dc20a9785001e05bb`  
		Last Modified: Sat, 19 Sep 2026 07:34:55 GMT  
		Size: 84.0 MB (83991060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b44e451741143e2273c147f394ab0a21b19cac06ae3ae11048adfc4d4a87b2`  
		Last Modified: Sat, 19 Sep 2026 07:34:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d93654eac325963ddd97d135299c59d46c8cc121349d9d5bfae3e14f76919519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b4e1bbaac59b0c5d839fcab878fdc4ad90cb6bb6518effca35f66ce73abc2d`

```dockerfile
```

-	Layers:
	-	`sha256:af6fea0ceb1001236bf91d2dffecd431f542aa4d9f724b69a230757e56a3f4dc`  
		Last Modified: Sat, 19 Sep 2026 07:34:52 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a9dc92579ba103567332c0019746858199835f270a663e81a2f3761bc605d3b`  
		Last Modified: Sat, 19 Sep 2026 07:34:51 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
