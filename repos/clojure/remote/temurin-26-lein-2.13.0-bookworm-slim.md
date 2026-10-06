## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:7a39fa8d7a7ddde96e0d4e74b6c684fcd512ba8e188736647b7a46a35ed77be6
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
$ docker pull clojure@sha256:dd51b04cdf652cf624d08e2921761329b3c5ad0ff5805b1a659dc04abcd4bf46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148230801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734285ad6d0a02fad7923dc85249fb2ab2c30767f391458a6a97e23d70817c85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:42:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:42:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:42:27 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:42:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:42:28 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:44:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:44:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:44:37 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:44:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:44:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:44:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:44:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78aba62c87ef2fa4ecb84e96b86f5c61e0c65fe1b2c3012725f0a490280614c`  
		Last Modified: Sat, 26 Sep 2026 05:45:17 GMT  
		Size: 93.4 MB (93350859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee99f4ae277abe52d78d07cbda79a6168e975edd3c09006ce489f4c4056889c8`  
		Last Modified: Sat, 26 Sep 2026 05:45:15 GMT  
		Size: 18.3 MB (18280731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba891a21832a79a69e632566ee4c264a18938ca3638c10714bec064fbcc929e`  
		Last Modified: Sat, 26 Sep 2026 05:45:14 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e488e710505d848ec1c88c1819453e3bf131280c4b6bc77b93e6b332fa2927f0`  
		Last Modified: Sat, 26 Sep 2026 05:45:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:35aa6e6b0584cbe520bd5cfcd5bdd1e804d88e475cade2b3c371c7358c50d41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5593c9473a7241bb195e224041bdaa155e69849fd575df462a20c35b556e5a1`

```dockerfile
```

-	Layers:
	-	`sha256:ac5aa943efa4aa7ac9f410dcec819853731b205ef0f5d92000a23f3c87ce7e03`  
		Last Modified: Fri, 02 Oct 2026 08:29:46 GMT  
		Size: 2.7 MB (2688280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62fe3d68ea5a76aa8eca8a744c5ee50cb9c814358b9d7b8d38138ee9f090793f`  
		Last Modified: Fri, 02 Oct 2026 08:29:46 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
