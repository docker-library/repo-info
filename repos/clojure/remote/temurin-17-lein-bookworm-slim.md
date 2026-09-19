## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:859adee7ea0baac95bc7bb7b811b7cae28cd2f1e168e5c96ef08a87bd11847d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5790be4e1088dd0e2e552d05d574e5922d91b9b57df02f7de63c244db57e606e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c47708958bcefa8b9f2e7736aaa87872be0f837f52a9a619de5be0b53b9c40b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:45 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:14:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:14:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:15:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:15:51 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:15:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:15:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:52 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2083b78840bf48d8569cda83aa553fab46ce3c99f854bc2b54dfc57ba0c3be61`  
		Last Modified: Sat, 19 Sep 2026 01:16:12 GMT  
		Size: 145.8 MB (145822703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb808f5e80d061af9c2d851e9b8462201a0fbec3f4bd5e9567f5661f7fc9e83`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 18.1 MB (18085939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06b34909a1977b96fdd4befbff0571484125d27938d675fc57556420ef156a9`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3df16942f3415ec2feffa2483311c850530791835837365ad6c024165915d`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5697b3071105ac2b35985971da39a5569536e12b37eba7c2e7492334da811c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa17fea9538442fa1865f4542b8c37c8d5fcc5b47926fa5b581e2815a727a16`

```dockerfile
```

-	Layers:
	-	`sha256:d061b7059d3e87e5000e4b144a7e9f58587fd6ae56a17ba3050ee8f292e5d1d5`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 2.7 MB (2737610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d99100bcf90702dde84309c43b592eeaf2fec5db7e0e2875ca3a1dbd0cf4740`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0111bd63724b61f6ea70b8ff766ef8ad96afd859d2dff609fc9f4a375c461e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195193411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f99b6fa9001fe1f3377bbd13c1546de73d8b61363ad51673f52fa6e30afb12e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:36 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:21:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:21:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:41 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a17c81617154af4c846b70db3fda2d540752d3edc45fe96969f00436c6cda7f`  
		Last Modified: Sat, 19 Sep 2026 01:23:02 GMT  
		Size: 144.6 MB (144647462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20dd82dae98d759f1881693e66320994a525262f53a78ef057e69a7a8b3eeea`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 17.9 MB (17906649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4878150486ec67a32c5968d534d8e82b499b87c177c1cee84a8384443c2f21d1`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2281bc9f99c17159c85a7f0034c4427c6e4200be1532439d15f53c649dbe0c`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ebcef67da955d2dedd52b7ca81e8bfb4abcd17c50afeaa9a0358a3adba0afb7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381d2d417c435bc4cce933e13d9360193e19481fba9b0fb67ce132d374e57229`

```dockerfile
```

-	Layers:
	-	`sha256:0a57313cf5759186d9d529fbcdd12216254fe32b44de3dc0d4409173b232e847`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 2.7 MB (2737225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:894c2bda14c609b59ee4924751ad8d5a2295a5c2e2d94f96ee09393484fb9a8c`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ff142d423b1632e67beeb3e94b23f3c0d4b89193476c0f3f68f6d2ad7de02af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200552676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b1c1f419e534365284397226fa2b9f15f6a138c0624875d3babf36b310e79d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:51:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:51:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:51:52 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:51:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:51:52 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:54:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:54:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:54:07 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:54:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:54:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:54:11 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:54:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c1e2072971df062c998cfee78bae6a9efeaf4c5741e49f7cf9b2bdb7610ee9`  
		Last Modified: Sat, 19 Sep 2026 07:54:48 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4da83b7483ba5d2f2d420c13c700681e785ae5b6fbefb250b012a10aed7b75`  
		Last Modified: Sat, 19 Sep 2026 07:54:45 GMT  
		Size: 18.3 MB (18279187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb63783a82c67bdce3deb113303efd601ed3e92e85571ad5fe4984a392eb4f8a`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac101b099e1b3e92b08712f98a7370bc6782818e87d3366e9a280fdf92ffe3f`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d738eb509e768a85c7463831e4e511727b606a21a33db5ad80a2b9bc3a2922ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b198b46930e0692b6b0c60ba5e170d2b066298b4b27a8f0c8441dbb3cd125a`

```dockerfile
```

-	Layers:
	-	`sha256:39425f1b1f91b6dc59f1e04e71d95e0878ba2448221b5fa8fdb47caa2a8d5f5f`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 2.7 MB (2739443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac0739a174943d4ed68719236c06dc62afe8f127b51661f1799bdbf21dc47d12`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
