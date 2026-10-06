## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:2f35c9ba99a451799bf6ecfba591f2fb4e69e4613fe8e9ac89260d0e5a78c3c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d97e548128bb73bc61f1582a626df10efd92cc4d20f09be0aea36d2dab868b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147704828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d7562131da8bf63bb16c41736ac1a6f7ececab7f089d553cc9ae26a50ffbb4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 06:14:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 06:14:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 06:14:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 06:14:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 06:14:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 06:14:04 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 06:15:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 06:15:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 06:15:14 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 06:15:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 06:15:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 06:15:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 06:15:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a10c7b708d72ce148e982c7685c49834054d00f70562c7b606b94328c5a857`  
		Last Modified: Tue, 06 Oct 2026 06:15:34 GMT  
		Size: 94.6 MB (94563498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5609196cc4f9acfd2bb06408a27c60bdfb773aa64432264bbed0c6d2945c2aa`  
		Last Modified: Tue, 06 Oct 2026 06:15:32 GMT  
		Size: 20.4 MB (20376376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a37ec0666990068f48220bc8583fb17fa05b233a59620873cfebaece2effc88`  
		Last Modified: Tue, 06 Oct 2026 06:15:32 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eef5d9b2958649cb66c219ef7737cc35996b18467cf3b08fae1d6513e298a5c`  
		Last Modified: Tue, 06 Oct 2026 06:15:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf4797fe61ba1cb9baf1f9d951930dfed4ab70dd609f6945c917eb1f03a76acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1ef08af5d270b711a7db3dd450e3b669594887a020e4df14d0c315bda74570`

```dockerfile
```

-	Layers:
	-	`sha256:95cf6fa59a9841dfb45b49567c5fc54a42c253c3b6a93ff19e6ad92bde5c10a5`  
		Last Modified: Tue, 06 Oct 2026 06:15:32 GMT  
		Size: 2.7 MB (2702511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62b9c87680a05dbfebbd80bdcf677afe20f55d63203dc751c85a7e6b392b19d7`  
		Last Modified: Tue, 06 Oct 2026 06:15:31 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5612751bf63c226f60db2bedded25dc7ce55bbe48ba151143e3707e5db5df673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144091198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad1ddb29abbcf4aaff4b15ff031c31a82dba3ea0be83ed8e84b404a1586319e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:30 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:39 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5acab652a4583544e804cefac66b0dbcd1e4bd80adbd7f7ecc92eec1b458180`  
		Last Modified: Fri, 02 Oct 2026 02:51:00 GMT  
		Size: 93.5 MB (93543596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80df7f6aeafd352e6ef226e6f5e6f618e808e0e35542c1c9455f5c42aa469a41`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 17.9 MB (17908311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f455e128de20f634b5286ec1b4e7e48ef53d7c737d24630c434fa910794dcc`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d70da78b6c7e36189597c11182ac70b5f70a76131a4bef3510d24e3567da4f`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:82e50e90d161149f95e309938c643f84ebf5101047e2155a719a1b48116baf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee2a5a064e458e28974fcce1ddf802d070d5a65383fd80e3ee606da540f09fe`

```dockerfile
```

-	Layers:
	-	`sha256:5d62cfa1d46dda6acc9106b32a4d01160de968a8c3824ebab4f43f5c70ae0c46`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 2.7 MB (2702123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fa992b4d60abe589ec2b6a3871e2bd4ed43d7bbf0bad26c969228fbba32578d`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e9304698147ca2a59fff31719c28325981860725838b90dda586f525bd9ec837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150694544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7c3d6f1655fe44a1b8f6255d38de5a04fd115663ea7fa60dddf229ba0b2f51`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:44:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:44:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:44:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:44:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:44:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:44:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:48:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:48:07 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:48:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:48:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:48:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:48:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d73dd0cd52d79880f1cbb3f3606ec8bdc285c8fbf42ead54402897b2fa5827`  
		Last Modified: Tue, 06 Oct 2026 10:48:58 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31318de31f62155fe8376c9ddfacfc58cc818235c1ac434a2b58884afd315e06`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 20.7 MB (20735599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075df5b2f3c9e0f6ccd1bc07c9c3fcf7321d70203dbe87791e804247ea77ebfb`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191960b1e47d554ad4f2c6c4311e4a5164b82dce086488f04476e3417c853a32`  
		Last Modified: Tue, 06 Oct 2026 10:48:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:637dd2cc670f19963e5df2b72379271d2e72d8a7943deb0001dc9c2583d27fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9984ce852414051c7e072580200eb724e3ea0001bc679cca2e7e4829402bc58b`

```dockerfile
```

-	Layers:
	-	`sha256:7f8d50d3f81aa3573f20cd7abbfdd87773ff0bef2b2a13ba25e9268504860f26`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 2.7 MB (2688280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfce2928fef0f4085d92b06ad58202e426ee4a664924abcc3624804f6e703a42`  
		Last Modified: Tue, 06 Oct 2026 10:48:55 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
