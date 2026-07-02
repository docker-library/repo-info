## `clojure:temurin-11-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:dad7037cffcbf6528b2eedc22b1a303e28d5ff5a7fad5b6a72470ac541dcc6aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:69ebb32cb3c6f4ee5e8a8d1318d8da6f8fdedb143322e797000e08cea31ce7e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196304898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d26c78f5386382af801ff9bb5eba6f407cdf27e70bbb45729d462f244d791ef`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:27:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:27:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:27:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:01 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cdf3ec1d88079e7bf33be16b215ea34b4efe43935d90a37e30daac3c7521619`  
		Last Modified: Thu, 02 Jul 2026 05:28:15 GMT  
		Size: 145.9 MB (145886124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f1da6c961680cb71328a84557521916184d82b841555cef60594b9f872ac79`  
		Last Modified: Thu, 02 Jul 2026 05:49:16 GMT  
		Size: 15.6 MB (15644071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cdb159dad180291c106c51c94eb5cf03630b0caaab0a210c84008cf1036e63`  
		Last Modified: Thu, 02 Jul 2026 05:49:16 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5df5a85baba96d3c1ae9b79967ed938a39b977628b74a64668c47fcf4754423d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3071451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca32ea87b8d5b8a14ea8e5ced50f39aeff2b8dc0898c74d08fb8d414258d4393`

```dockerfile
```

-	Layers:
	-	`sha256:51163f6de9424c26cac2573dfc3f2efd2e59d5b0d68fae5590ff96084ece95f2`  
		Last Modified: Thu, 02 Jul 2026 05:49:16 GMT  
		Size: 3.1 MB (3056628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6c6c5e981830b6f4dbd66c6918bcf085dfce957b69a802a2fecb1f69a5e4352`  
		Last Modified: Thu, 02 Jul 2026 05:49:15 GMT  
		Size: 14.8 KB (14823 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3639d4eeab17fabd70c14f0ed8f05886d343ff4c1275d4a0bea135ebf57b39a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191463953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98332d4d17099a5d6f7ecd603cb9e934e6c419bad4c780d13a5078655a81d55d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:48:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:18 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:28 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f066f03570166621bdd16d918d866eb6722c13d4255ab0167c0440f6b6af1bf`  
		Last Modified: Thu, 02 Jul 2026 05:49:50 GMT  
		Size: 142.6 MB (142582186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbaf2b9e55701a0d1ac0d1a649a592253574f029bc4e50461b61de035812e11`  
		Last Modified: Thu, 02 Jul 2026 05:49:47 GMT  
		Size: 15.6 MB (15619582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2c65edc357b0e4e077f7a1197c411a78525757c116403dd73ee8a797a90faa`  
		Last Modified: Thu, 02 Jul 2026 05:49:47 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8781ccee0e2b53e55a5dd22fd2411edb684b187dedaaf9825913a92a76824526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad5f876732c781acc7f52ff7e903773add13b86968a8e7366b88006929ffcdb`

```dockerfile
```

-	Layers:
	-	`sha256:3325925a4a79cf781acb28b2a41fa1172faa89016ee50ec63020a57afd9b7af7`  
		Last Modified: Thu, 02 Jul 2026 05:49:47 GMT  
		Size: 3.1 MB (3056855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f1ba54d9cf9ef96728635f888e8134d28e37d3d6e3c6963a167998ae7bc82d`  
		Last Modified: Thu, 02 Jul 2026 05:49:46 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
