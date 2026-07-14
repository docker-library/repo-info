## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:56e8d4fd38f8ca3805986ec754d3c688c8a62ee39990fa08bca09b64bbafbf48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e432b7f8f95979138063c22cbbc90b1f09594013c2a24a645ac0491dab65a408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150080208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8f172475ed81bab70b0a078779ed7ac9083dd4817e29e82e8fb20b46ea2317`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:15:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:15 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:15:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:15:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:15:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465560894eb23e394065a6ca7fd8d108fb3fa816f8b26990cbd3bdf21d470fd1`  
		Last Modified: Tue, 14 Jul 2026 02:15:46 GMT  
		Size: 55.2 MB (55198717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb905ebed4f0ddf44ce5551540d91adb879f031218ab017b749bb7cbe5ac4d1f`  
		Last Modified: Tue, 14 Jul 2026 02:15:47 GMT  
		Size: 66.6 MB (66648205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffaf30396feb6a6e6ce6b2dd3340910ed75a2174fefdb5a774f730461367112`  
		Last Modified: Tue, 14 Jul 2026 02:15:43 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b035324b8e417f4b59be791f7c60a224f276de5e86371e8d29432420892787b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361e377ec147bec115bc3187136abb59460825a7fc0f1cda173537dde0a3b235`

```dockerfile
```

-	Layers:
	-	`sha256:0811fc0cb73ae8751c8085c0656c72f4a456c1ded9d179f1d70dc619ce3b8232`  
		Last Modified: Tue, 14 Jul 2026 02:15:44 GMT  
		Size: 5.2 MB (5234395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0293f466fc1f2b51c9fa4d65e46889779ce96419f8570a5b78e9915481f4b33b`  
		Last Modified: Tue, 14 Jul 2026 02:15:43 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d871dec091fa62b674af0d0a062fe65942958199748dfd55eb4b0694b4ebc9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149028897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f995af772be999ce393409983f8ba4d50eab902f0bde6122f7cafed210f402d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6801bb0cb19542894d0a99c616247b50cc91b051731c8461ea4c4461cc7524`  
		Last Modified: Tue, 14 Jul 2026 02:22:58 GMT  
		Size: 54.3 MB (54272923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090fe728147e4b5ced4dd678b23826fa500bacefe987744956111916688514e9`  
		Last Modified: Tue, 14 Jul 2026 02:22:58 GMT  
		Size: 66.6 MB (66638076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be8c70e609ce8fa0c665934f5cfcb107235c0b24b086eff10a34fdc068b7d9e`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71fa44806105e43c5608b90e6d30c3936fa98e2aabba10c875d1ecdc2b6a83c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ae2dd94385fa2de48f89769e9b59e85b950f07c578af437ff3c7422c692b5e`

```dockerfile
```

-	Layers:
	-	`sha256:254f296fc3ae3901f23e5d16f3580e0c1e27b34e49e3372fa9d6b7cece334b90`  
		Last Modified: Tue, 14 Jul 2026 02:22:56 GMT  
		Size: 5.2 MB (5240856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc0d0e26c15e46fe1bd710b2f30d07cfdc8e520f8300d6b0941e73b13ab716cf`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7969724f208d3155744c49f4800cccdc788301a78c682ea3b5d6ff0e08e1b95d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157228027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1082b6ad6dbe26edefaa741f09d6bbbab0f186f421aa2ba6a55d6f63634bf865`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:46:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:46:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:46:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:46:04 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:46:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:46:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc8cbc3b754a226a54732e762ea3cf063c2f0866ebf01906dff36249088eb9`  
		Last Modified: Thu, 02 Jul 2026 06:47:20 GMT  
		Size: 52.7 MB (52669153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5589e748b6d10971128cbf4aeff268fcdb84e30dee1d959f7f6dd1b19c7e0818`  
		Last Modified: Thu, 02 Jul 2026 06:47:20 GMT  
		Size: 72.5 MB (72476251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dee28bddaa48479def9404684e3720f78623e31a1298c13351eff00b3bfe8b`  
		Last Modified: Thu, 02 Jul 2026 06:47:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f385e583e5b4decd8d311f69622300c80a0f1696306e9b9e8bca3f64d43a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880e5c690c542fdbf4edbcfbdf31b631707dbf7fce999bfa515cee5f14d9eebe`

```dockerfile
```

-	Layers:
	-	`sha256:2a54650c2a111d0f75812f355aab56990501f2c6e7077916df651b29f335187d`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 5.2 MB (5240112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13147c968e66f49de676c6af1bdbad9d5c3ff1b1410ffbd13dca77c057f2de56`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
