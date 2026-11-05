## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json
