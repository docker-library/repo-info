## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:efd35c153af6cee84d68df44fc4b383d43be834a26c9fe6a88ee2c111ac610df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:acbc5e968672c7c5d57e2789bf4cd103738e2cce01ab8c88f5ee53b14aeaa3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149948334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9dad368b7a1fc93ed953e19cc9337acf3d5f697bc6d6ca12619d0903069219`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:09:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:09:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:09:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:09:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:09:24 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:09:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:09:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:09:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8772e0d6607f832a32ea1714d4fc188784f69bea88d7e0412902e4189885af5f`  
		Last Modified: Wed, 28 Oct 2026 02:09:52 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1a96ea04ee6ef3823c744c7d9d9aa968efcbe196dae394df2bb7a4d8985f88`  
		Last Modified: Wed, 28 Oct 2026 02:09:52 GMT  
		Size: 66.5 MB (66508000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd9a5a666daa23b9e36348261d791502099d3d74240b202007aaf8128bef606`  
		Last Modified: Wed, 28 Oct 2026 02:09:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f49d84a483697f6fdb51e1f1107e9c2b4ba0d964fbca0ec69f8723572d4cddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2b991ef183e03154da600aca9afbf3df92fafaa1f6313d1c0ba0004744fe56`

```dockerfile
```

-	Layers:
	-	`sha256:4c4a90750e2e45ebddeb9df4cb1c1969ba1c74db200567098404d597513eccb1`  
		Last Modified: Wed, 28 Oct 2026 02:09:50 GMT  
		Size: 5.2 MB (5238395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635ef875dac609c18f277fa3324a39d8c1f19eaff6519f401f438d9f18c3dcb`  
		Last Modified: Wed, 28 Oct 2026 02:09:49 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3ffa2d259911c1ec7b010b9b9eab630d7b06b53bd750c80058db1215a782ca07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148893848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e1fb16d026cef96bee430f6830af4ef1ae86ac4efdc17cb07ea9d06d3e34ab`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:12 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3a36ea45778c8b76efba0735099061f01f9583c397f75ecb22e99dd7c4fbc3`  
		Last Modified: Wed, 28 Oct 2026 02:16:44 GMT  
		Size: 54.3 MB (54254291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78deec21319ecef87bf94c9945a0237cd7082c2343a4a9a696426e7a4044ef2`  
		Last Modified: Wed, 28 Oct 2026 02:16:44 GMT  
		Size: 66.5 MB (66500959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce78d6426e17eb5c72fc936eb30f82f97bde5f5fa3ff288fdaba392f23b5de8c`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:391450ffb47a9c8bb46272f3ce950dc26ba220c9a550359e3b5800773d9c3455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e029fb4467aac855321acc063369cde03b2d1ec06b5d61bb431752bfc856f017`

```dockerfile
```

-	Layers:
	-	`sha256:2d678c32a6002ff510ff13b873e04e579a033ecbb571b83075185bf67be17fc1`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 5.2 MB (5244856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d83d4fda2554f6ec83a3592efb5b08f379638876a97be106754ad26d5328e3`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9c47bee7b2331c97c6b19fd7cb70edb29539f291533c71848b91ebc475b9ca94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157094581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2a36cf51c5cff1ed918920f0cde53447cff8e848f0726ba102b91fa4dc3193`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:28:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:28:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:28:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:28:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:28:24 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:29:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2859ad61776f7d2e2779749854be4be1a677600ca4cd30693ea6c9791fdd442`  
		Last Modified: Wed, 21 Oct 2026 11:29:51 GMT  
		Size: 52.7 MB (52667132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f929ddea526eb91e64091434729374f6049f18dbb17ccdeb8a568b4e85805c`  
		Last Modified: Wed, 21 Oct 2026 11:29:52 GMT  
		Size: 72.3 MB (72333594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c57feda8f22bbaabbc486fbefc69cf34ec3d26ffe472ccc711a2d9be7f4e336`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25ef875c6b9456b06123e4d7a4b2a7c2cea652fe003510b8d524565e5361b764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01622663e6bf190554717b6e75edbf33968daad4842985a84dd3247ef4c38234`

```dockerfile
```

-	Layers:
	-	`sha256:271d16b9904aadb08897b2f6bf270687f1210c1d7b7a02da2e80f12f2b65bf6b`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 5.2 MB (5244120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bddaa3745c014658025bfef1dfc814871892ea42643d97ea9f291b5d7be7b5fa`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
