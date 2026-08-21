## `clojure:temurin-11-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:f6f992e41793c2c4b2335f69d5849413f489c5ba199021931627ea971b595e7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e6eef2b919613f9d31e7debdb2ce17af69da40a6321ed4e771a383a256939400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196279659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677a57b8984fcb041d667e74a3b9b3c992023b5196c44456d83ee112ad022844`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:10:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:18 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:18 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:11:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:11:32 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c284521c94efcc2d8857f46c0e9769e6cc0c4850c9733f6e7a3c3bcdf7b6d9`  
		Last Modified: Fri, 21 Aug 2026 19:11:54 GMT  
		Size: 145.9 MB (145861379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a16422b6bc9dcb97dbbb10941c693467db085a57601624a9223d3d18e04ba`  
		Last Modified: Fri, 21 Aug 2026 19:11:51 GMT  
		Size: 15.6 MB (15643436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5301b32cb0ae2d02e2245436a39a4baa9488c320de8ae97bd21a1f7d63a56c4`  
		Last Modified: Fri, 21 Aug 2026 19:11:51 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc17fedcdc2e0672c45fdb5c57aa1e843ab9ab27be6bdd46b9e8a0c86e41094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221814fd44c6011a0cab8c11869c1445ef0b935ddb1bffac6a406eba585dc376`

```dockerfile
```

-	Layers:
	-	`sha256:01ba0af5b8b353286fe697efa940ede458d1b24f7a354488038e3bad7bc27125`  
		Last Modified: Fri, 21 Aug 2026 19:11:51 GMT  
		Size: 3.1 MB (3061829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d029f9d2bcbbc9ffe3b1907336faa65bbf652cedb2c16ce1409b5ae9848a825`  
		Last Modified: Fri, 21 Aug 2026 19:11:50 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:71e024dd094bea015196821ab9672648c3cf942b1627387289028e108b2c752d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191462228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd75d728cdf8d5981bf1b2e100defaa801caadf6767cb20b39992246d1a624f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:00:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:44 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:00:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:00:44 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:01:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:01:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:01:57 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:01:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:01:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252b510f6c9630a109c6b99218488bcc6415feaf423980937b5d5df518e987fd`  
		Last Modified: Fri, 21 Aug 2026 19:02:19 GMT  
		Size: 142.6 MB (142566565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1582d0783782439e91da3bb716d7a7678899eed6702919180236c4597b706678`  
		Last Modified: Fri, 21 Aug 2026 19:02:16 GMT  
		Size: 15.6 MB (15631536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c122cacdc731dd65f718b84d1077fbe8b1fe4e204ba0ba9aaaaddf2c0d26a599`  
		Last Modified: Fri, 21 Aug 2026 19:02:15 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:feba1036606822c627a9fb32757480aa8d99d78eb66e7eba5c75d7e81349beae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c0af52d91edb9e851164625735c968defce68678c496c74c6b3fa0d492fc6`

```dockerfile
```

-	Layers:
	-	`sha256:fb046478216721edba61171d6044007795946ea83f1b38329e17899b0f3092e6`  
		Last Modified: Fri, 21 Aug 2026 19:02:15 GMT  
		Size: 3.1 MB (3062056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9868e8dedf7ff180f8a823910b61c1bd800509991dd4cb1d49cd28b147bef31`  
		Last Modified: Fri, 21 Aug 2026 19:02:15 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
