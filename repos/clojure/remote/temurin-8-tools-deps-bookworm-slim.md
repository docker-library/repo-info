## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:9707da979460877771e705e5a7a9e0eec32bb9e9a56d80235cbd58518f02fec4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c197e03a3e24e8a8065b613110a3d916945120fc1773f8fc13b1e79ae28835d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149967440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839dcc0642724bc716255ccae132d588425e14457a92cad56951bb804c9007a0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:08:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:08:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:08:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:08:13 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:08:13 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:08:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:08:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:08:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54fc610fd8f74cf573444f83b2095aaaa512222cd4a7733008b6428bb8eb0d6`  
		Last Modified: Tue, 24 Nov 2026 05:08:43 GMT  
		Size: 55.2 MB (55207929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9febf88694ccbd5a4018ff05c758c37ac134fa58ed9c32f216ba72270b2cf5d`  
		Last Modified: Tue, 24 Nov 2026 05:08:44 GMT  
		Size: 66.5 MB (66510907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d967fca74bde3cd4a269e836c9056c53f0ccf105514b7c603672be4ff8d75390`  
		Last Modified: Tue, 24 Nov 2026 05:08:41 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:77f25b9e9e17397b68eb2ab102a179f6be000e331349c9ad4c6f9d91f431cd31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b12594d656cf26936f6f658a71f560a2df18d5dac254ac6275518cfb05d33d`

```dockerfile
```

-	Layers:
	-	`sha256:845a9e1e148c5ebfec59bedcda8b16dbc8eaa1d9917bd0764be09a09af37402f`  
		Last Modified: Tue, 24 Nov 2026 05:08:41 GMT  
		Size: 5.2 MB (5238469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c203b5cb841eb853228cdd7b60927a266632f987071697b58009a333a5e96cd`  
		Last Modified: Tue, 24 Nov 2026 05:08:41 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ce12c15ee62ca709cfdfc89e71a7e126d2bd3d09429890c43efd8be821723843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148911603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1625af3fde1c6e5aa89daadf0fffe844f35754c090c8a057c398fc76fe29e997`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:15:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:15:46 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:15:46 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:16:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:16:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:16:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d69e14d0d2c02a57adbf21702b7862d207041c36a4480f0413b36d536e2fd8`  
		Last Modified: Tue, 24 Nov 2026 05:16:18 GMT  
		Size: 54.3 MB (54270344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a07d72e5cf4b0fe2a085d9d5f3c5eef18466a165fb32606b20389d23416c1e4`  
		Last Modified: Tue, 24 Nov 2026 05:16:19 GMT  
		Size: 66.5 MB (66496310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368a5aa3b76ca9d9522f65fdd90962146239548342feca8438ca2b59918e3453`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1849369158421e781d3a88d92295add1b03020721d8838103b97facdd70f1d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c8a15bed8084ad3387aceec6b0a78e8f9cdc4ac11e3265dd70f02e131dc2e4`

```dockerfile
```

-	Layers:
	-	`sha256:b9a5291bdf7cfd4b1c0fed85cf884a9df236e1c42dfcf04bd3d6b88bba46b36d`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 5.2 MB (5244930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1243ca0057362274d4a3f7c5f9bed9f7bca11625b5e72a6284a2db0ff61ba6f1`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3159b23b44ad706dea56006111480ad2fd2b3281be3d27869da95c671f9f6654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157117712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e48d68fc7a371b9e3cd059c3bb6078fd9baf70bc344e8d82a2e98d5ced27e03`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:24:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:24:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:24:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:24:47 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:24:48 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:25:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:25:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:25:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460f5c92725875a2f0b13e538e5dfa83c9f7c49f41417f67124d96449c4e8302`  
		Last Modified: Fri, 20 Nov 2026 01:26:16 GMT  
		Size: 52.7 MB (52689143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5a628aff3121df05218c8337473bfe91fb20dafbc0e6e28c3993dcd21fd23`  
		Last Modified: Fri, 20 Nov 2026 01:26:17 GMT  
		Size: 72.3 MB (72334361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e1c77abe58e77569bcec1c093ae3c4f838a5c7a390ddd24b757a931997e17f`  
		Last Modified: Fri, 20 Nov 2026 01:26:14 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a5e4e14a0a017ec52e3dbf953682d49120ec5ee1930aaa8996099f12929dc2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1cd3a6f54c1905ea669bbcc9a98f12d765db28a3468c9c116440dbfa0d528dc`

```dockerfile
```

-	Layers:
	-	`sha256:4c71b68a562175fb9e04fb4e41ab1b86427460f8d01d28a75560036ac381c9fa`  
		Last Modified: Fri, 20 Nov 2026 01:26:14 GMT  
		Size: 5.2 MB (5244222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3e7d8d310edd7db8d359445b8d735ad80cab37c3acbfe616aef7ca9d9de5963`  
		Last Modified: Fri, 20 Nov 2026 01:26:14 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
