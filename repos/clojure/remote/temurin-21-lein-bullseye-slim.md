## `clojure:temurin-21-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:91d3ed81dc56a0aac4fdb7549eee405906c7a4aaaa30e8e0406b1a131dfdd34a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0b183ec69884bf5726fe39e35073ef5ef39738a8b6d0e296f36497bdafcd3622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208585985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901e425a647e0ff12a6d21c35a25c98248d8e4f1bf612b1b62a6b1b96171699f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:52:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:09 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:12 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901f1457080e5478b8e1c0823e036394ab8f3bf6a2d70c5bd3d985dc9486ac4b`  
		Last Modified: Thu, 02 Jul 2026 05:53:37 GMT  
		Size: 158.2 MB (158166927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af77eb051f68c6f1d6b2f22fc839b1be6c99035dc22f7f1da3f0eac79828b40e`  
		Last Modified: Thu, 02 Jul 2026 05:53:33 GMT  
		Size: 15.6 MB (15643962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcefc1623422459724225f52a2c8a44862cca9f84aa4e9ac383f192cba25a70`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dac6b09ba958732ef6c16ff461f78ddfb5ab81ed016854a3b2b25cc37f6627a`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:652949c4e9e3b803656d23ad529131459230de321cc66d54d32cd38f5bac9e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2f4fbf075d21a444a82ecd578efe6be008ea8bae7d8ed589465f3ef6f2e1e1`

```dockerfile
```

-	Layers:
	-	`sha256:7486734e868f1b7fd69797f932267f0d87b9ecc6d05735ad34951272696ca5d9`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 3.0 MB (3038964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0cba3b58caa8e827ce7dad49a8e3bd4cf09fe42c6b1489a81c341110431d2a5`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7c22a63561b8406fa17a8effa2333cd789b7a4156fd608d5773ac2b7e7052cf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205343548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a7fc5d141837774443c31496936f7ea47015b58f8b44c1a7cf0ecb0bbf4886`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:52:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:50 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f9085b277ebc39b7f70230bc5610ef540e173ae21c41b516273a6fe2a40c74`  
		Last Modified: Thu, 02 Jul 2026 05:54:14 GMT  
		Size: 156.5 MB (156461290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d160200344eb81cc1fae458e0f274d0ffe607f13475a4f7630c169c02b720853`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 15.6 MB (15619669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4973bd1fc225dc5a95015a35078d5f7f9c98f9ea432e84f2264a8a11bd480e`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d49e5a508d50b2b23e6962a63c90f39aea3107820d0cf3b1b47ecdb33e2d28d`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18b3605633e1f81dfdfacb04020b1e24d99f2b25082f5b0a26c2e17149426e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17908410e4146dbbc7df5e1b04007cc56b608d49804314addf806688be73005`

```dockerfile
```

-	Layers:
	-	`sha256:63691d3e6426f0027fab0ebc55073bc3e4e8879f304cdf048492f9cb9a8d1b2b`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 3.0 MB (3038573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e382fbe0aebace69f10e6b8e295969119babe80e995f1782198ac6f725ea7d56`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json
