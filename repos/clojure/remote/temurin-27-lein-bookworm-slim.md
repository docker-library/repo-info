## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:f859065d495da519bf9bd8bd9799c7bcb43e156adb3727e5595bde76b6ed0d5f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0932b658416c5aa2a1ce0b9b856db0444fe732521b9f5ae42899401491d18bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144485680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab34435122f7538e11d50b527de773b8f6f786706441d5a25076d7e211f23dcf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:13:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:22 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:35 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182f1ac174c8c0d4b2007a33238fc1857ba219fb9a3d1f2464949faa45b3c6b8`  
		Last Modified: Tue, 24 Nov 2026 05:14:56 GMT  
		Size: 93.6 MB (93649645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1c745fad41478fd5bdb6391bcb4afc5d435c36c1acab38851e0b82ca0f998`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 18.1 MB (18071936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61bb231c00f466156f21a16d460d7c9685ab25d6e53a241fd1daa797bd5cebd`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f063c70680c19a25b5ec6015fc6052415b3172b52e3ee0a8d8a52e785a57cfc`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:002eb0263d763a784bfe90c54638330eb687ffc23779b5aa6cf6b4ff023269fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6e36a8d27e9f49427ed5cecf0dfac599560c4b4b50ca3b82074ff3bd6cbc02`

```dockerfile
```

-	Layers:
	-	`sha256:387f802db6e431c55b6fc01c36a7be7a70d8857f8a56278ddc340c8b2b930c27`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 2.7 MB (2699969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0738e0b021b3fd83d6c027d952683085ec4543ed3008a6ce69969e94f097b29`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 18.4 KB (18362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba894784172bddee488e0e8e0232f195c8fbe897154587d35dc0afc3931140f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143227475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51e10c58cd5dce50c2ea5e8a63c058d18fd93c12b9c94827b3c94d11cd2a1e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:07:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:08:51 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67389f4d3b61fcf5dc137b04ff57c871537065a898c47f12e48f3450a1ea826d`  
		Last Modified: Thu, 12 Nov 2026 01:09:13 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbd0b697fe2c89c00913de02c98fcdd3f58d6075aae02b6fd0b6c5aa4bf2c70`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 17.9 MB (17906529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e188cf02b1f037746070f7b068ed16013a33123ca53cb6955bce134a35cff`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0ee386345170d2b660fc78df2ac9792c3ad62d76cc43fc51f04ee54aa0a99c`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17a80e53e131d0a380db55b8ad49bad04ae1a53c4302064f98d922af0e82d40d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63cde04e5c90cca3c780de09508aaf279331b9923d07d5ba5ad637d8d6eed05`

```dockerfile
```

-	Layers:
	-	`sha256:6d90d785bad831d1a7862b9504f3b75d21465ad785edffb74aca7ff7196bf1b4`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 2.7 MB (2699589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4953e4efd52779ae43083db518615370a12f56c986cabd13df203e2098683ed9`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:fb15a6da72aadd0c91a5477286bb08c94445338c62903b3ecca2c2bd5794ae0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146822698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3ca2491d0c7fa6304444993db67ea23b1e6345af79e239dc7fb5af6724ad46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 13:08:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:08:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:08:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:08:38 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 13:08:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 13:08:39 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:11:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:11:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:11:54 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:11:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:12:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:12:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:12:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cbe6e8a38eea3dddfe265adcb6cd6f31a832e125d8b32a7eccefb6e5f417f9`  
		Last Modified: Tue, 24 Nov 2026 13:12:40 GMT  
		Size: 91.9 MB (91933328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041757c755963d576e5d7911d1fc40cc595702fe80ad4b0432284ed1d9ab0185`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 18.3 MB (18279732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a06c644739e642bf6be30194800486840e5bd08b778e8cddfd95d65964578b`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af87771ba799be652df059ff337a23ff1adb7a7342d9cc3c6bf15963fca70ddc`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:48748f03d4d292bd980f9952ecfa1f3690a1537bbd2ed0f63f1047d25ed0bd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2702283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2acef3708676e62dbc316f68a9fb6f4ca708f30705a1e82e5e9a6ff311a3a31b`

```dockerfile
```

-	Layers:
	-	`sha256:fe202a265b4b27149c9446259ea6b3cf415d72b318554b5a4b543c7fd24e73eb`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 2.7 MB (2683877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc053b26a4626b618bf76ccc3d2b2ea5922a8fe5bbcd9b402812b2b9310cd3e1`  
		Last Modified: Tue, 24 Nov 2026 13:12:37 GMT  
		Size: 18.4 KB (18406 bytes)  
		MIME: application/vnd.in-toto+json
